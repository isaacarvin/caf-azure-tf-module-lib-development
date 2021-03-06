variable "res_nic_name" {
  type        = string
  description = "Compute Windows: Network Interface Card Name"
}

variable "res_location" {
  type        = string
  description = "Compute Windows: Azure Region Location Name"
}

variable "res_rg_name" {
  type        = string
  description = "Compute Windows: Resource Group Name"
  default     = null
}

variable "res_tags" {
  type        = map
  description = "Compute Windows: Default Tags Map"
}

variable "res_nic_ip_config_name" {
  type        = string
  description = "Compute Windows: Network Interface Card IP Config Name"
}

variable "res_subnet_id" {
  type        = string
  description = "Compute Windows: Subnet ID"
}

variable "res_nic_address" {
  type        = string
  description = "Compute Windows: Network Interface Card Address"
  default     = null
}

variable "res_nic_address_allocation" {
  type        = string
  description = "Compute Windows: Network Interface Card Address Allocation"
}

variable "res_image_id" {
  type        = string
  description = "Compute Windows: Image ID"
}

variable "res_compute_name" {
  type        = string
  description = "Compute Windows: Compute Name"
}

variable "res_compute_rg_name" {
  type        = string
  description = "Compute Windows: Compute Resource Group Name"
}

variable "res_compute_size" {
  type        = string
  description = "Compute Windows: Compute Size"
}

variable "res_avset_id" {
  type        = string
  description = "Compute Windows: Availability Set ID"
}

variable "res_storage_os_create_option" {
  type        = string
  description = "Create Option for the OS Disk"
  default     = "FromImage"
}

variable "res_compute_os_disk_name" {
  type        = string
  description = "Compute Windows: Compute OS Disk Name"
}

variable "res_compute_data_disk_name" {
  type        = string
  description = "Compute Windows: Compute Data Disk Name"
}

variable "res_storage_os_disk_type" {
  type        = string
  description = "Compute Windows: Compute OS Disk Type"
  default     = "StandardSSD_LRS"
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

variable "res_compute_diag_account_name" {
  type        = string
  description = "Compute Windows: Compute Diagnostics Account Name"
}

variable "res_os_compute_name" {
  type        = string
  description = "Compute Windows: OS Compute Name"
}

variable "res_compute_username" {
  type        = string
  description = "Compute Windows: Compute Username"
}

variable "res_compute_password" {
  type        = string
  description = "Compute Windows: Compute Password"
}