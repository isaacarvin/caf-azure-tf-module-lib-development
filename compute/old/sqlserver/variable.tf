variable "res_nic_name" {
  type        = string
  description = "Compute SQL Server: Network Interface Card Name"
}

variable "res_location" {
  type        = string
  description = "Compute SQL Server: Azure Region Location Name"
}

variable "res_rg_name" {
  type        = string
  description = "Compute SQL Server: Resource Group Name"
}

variable "res_tags" {
  type        = map
  description = "Compute SQL Server: Default Tags Map"
}

variable "res_nic_ip_config_name" {
  type        = string
  description = "Compute SQL Server: Network Interface Card IP Config Name"
}

variable "res_subnet_id" {
  type        = string
  description = "Compute SQL Server: Subnet ID"
}

variable "res_nic_address_allocation" {
  type        = string
  description = "Compute SQL Server: Network Interface Card Address Allocation"
}

variable "res_compute_name" {
  type        = string
  description = "Compute SQL Server: Compute Name"
}

variable "res_compute_rg_name" {
  type        = string
  description = "Compute SQL Server: Compute Resource Group Name"
}

variable "res_compute_size" {
  type        = string
  description = "Compute SQL Server: Compute Size"
}

variable "res_avset_id" {
  type        = string
  description = "Compute SQL Server: Availability Set ID"
}

variable "res_image_id" {
  type        = string
  description = "Compute SQL Server: Image ID"
}

variable "res_compute_os_disk_name" {
  type        = string
  description = "Compute SQL Server: Compute OS Disk Name"
}

variable "res_compute_data_disk_name" {
  type        = string
  description = "Compute SQL Server: Compute Data Disk Name"
}

variable "res_compute_data_disk_size" {
  type        = string
  description = "Compute SQL Server: Compute Data Disk Size"
}

variable "res_compute_diag_account_name" {
  type        = string
  description = "Compute SQL Server: Compute Diagnostics Account Name"
}

variable "res_os_compute_name" {
  type        = string
  description = "Compute SQL Server: OS Compute Name"
}

variable "res_compute_username" {
  type        = string
  description = "Compute SQL Server: Compute Username"
}

variable "res_compute_password" {
  type        = string
  description = "Compute SQL Server: Compute Password"
}


