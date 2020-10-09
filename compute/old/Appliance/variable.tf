
variable "res_location" {
  type        = string
  description = "Compute Appliance: Azure Region Location Name"
}

variable "res_rg_name" {
  type        = string
  description = "Compute Appliance: Resource Group Name"
}

variable "res_tags" {
  type        = map
  description = "Compute Appliance: Default Tags Map"
}

variable "res_compute_name" {
  type        = string
  description = "Compute Appliance: Compute Name"
}

variable "res_compute_rg" {
  type        = string
  description = "Compute Appliance: Compute Resource Group Name"
}

variable "res_nics_ids" {
  type        = list
  description = "Compute Appliance: List of Network Interface IDs"
}

variable "res_compute_size" {
  type        = string
  description = "Compute Appliance: Compute Size"
}

variable "res_primary_nic_id" {
  type        = string
  description = "Compute Appliance: Primary Nic ID"
}

variable "res_avset_id" {
  type        = string
  description = "Compute Appliance: Availability Set ID"
}

variable "res_compute_os_disk_name" {
  type        = string
  description = "Compute Appliance: Compute OS Disk Name"
}

variable "res_os_compute_name" {
  type        = string
  description = "Compute Appliance: OS Compute Name"
}

variable "res_compute_username" {
  type        = string
  description = "Compute Appliance: Compute Username"
}

variable "res_compute_password" {
  type        = string
  description = "Compute Appliance: Compute Password"
}
