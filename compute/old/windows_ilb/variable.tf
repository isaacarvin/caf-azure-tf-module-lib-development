variable "res_nic_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Network Interface Card Name"
}

variable "res_location" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Azure Region Location Name"
}

variable "res_rg_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Resource Group Name"
}

variable "res_tags" {
  type        = map
  description = "Compute Windows Internal Load Balancer: Default Tags Map"
}

variable "res_nic_ip_config_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Network Interface Card IP Config Name"
}

variable "res_subnet_id" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Subnet ID"
}

variable "res_nic_address" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Network Interface Card Address"
  default     = null
}

variable "res_nic_address_allocation" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Network Interface Card Address Allocation"
}

variable "res_ip_config" {
  type        = string
  description = "Compute Windows Internal Load Balancer: IP Config"
}

variable "res_ilb_be_id" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Load Balancer Backend ID"
}

variable "res_image_id" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Image ID"
}

variable "res_compute_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Compute Name"
}

variable "res_compute_rg_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Compute Resource Group Name"
}

variable "res_compute_size" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Compute Size"
}

variable "res_avset_id" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Availability Set ID"
}

variable "res_compute_os_disk_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Compute OS Disk Name"
}

variable "res_storage_os_create_option" {
  type        = string
  description = "Compute Windows: Compute OS Disk Creation Option"
  default     = "FromImage"
}

variable "res_storage_os_disk_type" {
  type        = string
  description = "Compute Windows: Compute OS Disk Type"
  default     = "StandardSSD_LRS"
}

variable "res_compute_data_disk_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Compute Data Disk Name"
}

variable "res_compute_diag_account_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Compute Diagnostics Account Name"
}

variable "res_os_compute_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: OS Compute Name"
}

variable "res_compute_username" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Compute Username"
}

variable "res_compute_password" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Compute Password"
}

variable "res_bkup_vault_rg_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Backup Vault Resource Group Name"
}

variable "res_bkup_vault_name" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Backup Vault Name"
}

variable "res_bkup_vault_policy_id" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Backup Vault Policy ID"
}

variable "res_kv_vault_id" {
  type        = string
  description = "Compute Windows Internal Load Balancer: Key Vault Vault ID"
}

variable "res_storage_data_disk_type" {
  type        = string
  description = "Compute Windows: Compute Data Disk Type"
  default     = "StandardSSD_LRS"
}

variable "res_storage_data_disk_size" {
  type        = string
  description = "Compute Windows: Compute Data Disk Size"
  default     = 10
}

variable "res_storage_data_create_option" {
  type        = string
  description = "Compute Windows: Compute Disk Creation Option"
  default     = "Empty"
}