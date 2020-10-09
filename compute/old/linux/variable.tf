variable "res_nic_name" {
  type        = string
  description = "Compute Linux: Network Interface Card Name"
}

variable "res_location" {
  type        = string
  description = "Compute Linux: Azure Region Location Name"
}

variable "res_tags" {
  type        = map
  description = "Compute Linux: Default Tags Map"
}

variable "res_compute_rg_name" {
  type        = string
  description = "Compute Linux: Compute Resource Group Name"
}

variable "res_nic_ip_config_name" {
  type        = string
  description = "Compute Linux: Network Interface Card IP Config Name"
}

variable "res_compute_subnet_id" {
  type        = string
  description = "Compute Linux: Compute Subnet ID"
}

variable "res_compute_name" {
  type        = string
  description = "Compute Linux: Compute Name"
}

variable "res_compute_size" {
  type        = string
  description = "Compute Linux: Compute Size"
}

variable "res_avset_id" {
  type        = string
  description = "Compute Linux: Availability Set ID"
}

variable "res_image_id" {
  type        = string
  description = "Compute Linux: Image ID"
}

variable "res_compute_os_disk_name" {
  type        = string
  description = "Compute Linux: Compute OS Disk Name"
}

variable "res_compute_data_disk_name" {
  type        = string
  description = "Compute Linux: Compute Data Disk Name"
}

variable "res_compute_diag_account_name" {
  type        = string
  description = "Compute Linux: Compute Diagnostics Account Name"
}

variable "res_os_compute_name" {
  type        = string
  description = "Compute Linux: OS Compute Name"
}

variable "res_compute_username" {
  type        = string
  description = "Compute Linux: Compute Username"
}

variable "res_compute_password" {
  type        = string
  description = "Compute Linux: Compute Password"
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