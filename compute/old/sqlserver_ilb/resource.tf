# Resource: Compute Network Card
resource "azurerm_network_interface" "nic" {
  name                = var.res_nic_name
  location            = var.res_location
  resource_group_name = var.res_rg_name
  tags                = var.res_tags

  ip_configuration {
    name                          = var.res_nic_ip_config_name
    subnet_id                     = var.res_subnet_id
    private_ip_address_allocation = var.res_nic_address_allocation
  }
}

# Resource: Load Balancer Backend Pool Association
resource "azurerm_network_interface_backend_address_pool_association" "be-ilb" {
  network_interface_id    = azurerm_network_interface.nic.id
  ip_configuration_name   = var.res_ip_config
  backend_address_pool_id = var.res_ilb_be_id
}

# Resource: Windows Instance
resource "azurerm_virtual_machine" "compute" {
  name                  = var.res_compute_name
  location              = var.res_location
  resource_group_name   = var.res_compute_rg_name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = var.res_compute_size
  availability_set_id   = var.res_avset_id

  storage_image_reference {
    id = var.res_image_id
  }

  storage_os_disk {
    name              = var.res_compute_os_disk_name
    caching           = "None"
    create_option     = "FromImage"
    managed_disk_type = "Premium_LRS"
  }

  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_data_disk {
    name              = join("-", [var.res_compute_data_disk_name, "01"])
    managed_disk_type = "Premium_LRS"
    create_option     = "Empty"
    lun               = 0
    disk_size_gb      = var.res_compute_data_disk_size
  }

  storage_data_disk {
    name              = join("-", [var.res_compute_data_disk_name, "02"])
    managed_disk_type = "Premium_LRS"
    create_option     = "Empty"
    lun               = 1
    disk_size_gb      = var.res_compute_data_disk_size
  }

  storage_data_disk {
    name              = join("-", [var.res_compute_data_disk_name, "03"])
    managed_disk_type = "Premium_LRS"
    create_option     = "Empty"
    lun               = 2
    disk_size_gb      = var.res_compute_data_disk_size
  }

  storage_data_disk {
    name              = join("-", [var.res_compute_data_disk_name, "04"])
    managed_disk_type = "Premium_LRS"
    create_option     = "Empty"
    lun               = 3
    disk_size_gb      = var.res_compute_data_disk_size
  }

  storage_data_disk {
    name              = join("-", [var.res_compute_data_disk_name, "05"])
    managed_disk_type = "Premium_LRS"
    create_option     = "Empty"
    lun               = 4
    disk_size_gb      = var.res_compute_data_disk_size_shadow
  }

  # Output from the Monitoring Module: Output of Diag_Storage Blob Name.
  boot_diagnostics {
    enabled     = true
    storage_uri = var.res_compute_diag_account_name
  }

  os_profile {
    computer_name  = var.res_os_compute_name
    admin_username = var.res_compute_username
    admin_password = var.res_compute_password
  }

  os_profile_windows_config {
    provision_vm_agent        = true
    enable_automatic_upgrades = false
    timezone                  = "New Zealand Standard Time"
  }

  tags = var.res_tags
}
