#!/usr/bin/env bash
#
# (C) Copyright 2019 Hewlett Packard Enterprise Development LP 
#

source ../bin/helper-functions.sh

usage() { echo "Usage: $0 -a <subscriptionId> -b <resourceGroupName> -c <deploymentName> -d <resourceGroupLocation>" 1>&2; exit 1; }

declare subscriptionId=""           # MANDATORY
declare resourceGroupName=""        # MANDATORY
declare deploymentName=""           # MANDATORY
declare resourceGroupLocation=""    # MANDATORY

# check login status and attempt log in with locally stored credentials if needed
check_login

# initialize parameters specified from command line
while getopts ":a:b:c:d:" opt; do
    case $opt in
        a)
            subscriptionId=${OPTARG}
            ;;
        b)
            resourceGroupName=${OPTARG}
            ;;
        c)
            deploymentName=${OPTARG}
            ;;
        d)
            resourceGroupLocation=${OPTARG}
            ;;
    esac
done
shift $((OPTIND-1))

# check if mandatory parameters have been provided
if [[ -z "$subscriptionId" ]]; then
	echo "Subscription ID:"
	read subscriptionId
	[[ "${subscriptionId:?}" ]]
fi

if [[ -z "$resourceGroupName" ]]; then
	echo "Resource Group name:"
	read resourceGroupName
	[[ "${resourceGroupName:?}" ]]
fi

if [[ -z "$deploymentName" ]]; then
	echo "Deployment name:"
	read deploymentName
    [[ "${deploymentName:?}" ]]
fi

if [[ -z "$resourceGroupLocation" ]]; then
	echo "Resource Group location:"
	read resourceGroupLocation
    [[ "${resourceGroupLocation:?}" ]]
fi

# templateFile Path - template file to be used
templateFilePath="../modules/resource-group/azuredeploy.json"
if [ ! -f "$templateFilePath" ]; then
	echo "${ERROR}\"$templateFilePath\" not found, exiting..${RESET}"
	exit 1
fi

if [ -z "$subscriptionId" ] || [ -z "$resourceGroupName" ] || [ -z "$deploymentName" ] || [ -z "$resourceGroupLocation" ]; then
	echo "${ERROR}Either one of Subscription ID, Resource Group names, Deployment name, or Resource Group Location parameters is empty.${RESET}"
	usage
fi

# set the default subscription id
az account set --subscription "$subscriptionId"
set +e 

# check if the resource group already exists, and create if it does not exist
if [[ -z $(az group show --name $resourceGroupName 2>/dev/null) ]]; then
    echo "Creating resource group: \""$resourceGroupName"\" in subscription: \""$subscriptionId"\".."
    az deployment create --name "$deploymentName" \
    --location "$resourceGroupLocation" \
    --template-file "$templateFilePath" \
    --parameters resourceGroupName="$resourceGroupName" \
    resourceGroupLocation="$resourceGroupLocation" 1> /dev/null
    if [ $? != 0 ]; then
	    echo "${ERROR}Error creating resource group: \""$resourceGroupName"\", exiting..${RESET}"
        exit
    else
        echo "${SUCCESS} - Resource group named: \""$resourceGroupName"\" has been successfully created.${RESET}"

    fi
else
    echo "${INFO}The resource group \""$resourceGroupName"\" already exists in subscription: \""$subscriptionId"\".${RESET}"
fi
set -e
