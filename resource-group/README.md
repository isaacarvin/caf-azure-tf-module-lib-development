# Create Resource Group

### About
This module creates a resource group.  

### Prerequisites
There must be a subscription.  

### Parameters
The following mandatory parameters must be provided as command line arguments to the `deploy.sh` deployment script.  

**All parameters are mandatory**

| Flag | Parameter name | Description | Type | Example value | Notes |  
|------|----------------|-------------|------|---------------|-------|  
| -a | subscriptionId | The ID of the subscription. | string | `xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx` | - |  
| -b | resourceGroupName | Will be the name of the resource group created. | string | `Network` | - |  
| -c | deploymentName | Will be the name for this deployment. | string | `createRG` | Will be visible in the Azure Portal. |  
| -d | resourceGroupLocation | Is the location the resource group will be created in. | string | `westeurope` | - |  

### Usage
All deployment script command line arguments must be provided:  
`-a <subscriptionId> -b <resourceGroupName> -c <deploymentName> -d <resourceGroupLocation>`

e.g. To run this module individually, the command below must be run from `deploy` directory:  
`. ../modules/resource-group/deploy.sh -a <subscriptionId> -b Network -c createRG -d westeurope`

**Note:** It will check if any of the resource group already exist, and only create the resource group that does not exist.  

If all parameters are not provided to the deployment script, it will check and ask for missing parameters to be entered.  