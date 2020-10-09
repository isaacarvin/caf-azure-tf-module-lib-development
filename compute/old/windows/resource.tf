resource "azurerm_network_interface" "nic" {
  name                = var.res_nic_name
  location            = var.res_location
  resource_group_name = var.res_compute_rg_name
  tags                = var.res_tags

  ip_configuration {
    name                          = var.res_nic_ip_config_name
    subnet_id                     = var.res_subnet_id
    private_ip_address            = var.res_nic_address
    private_ip_address_allocation = var.res_nic_address_allocation
  }
}

# Resource: Windows Instance
resource "azurerm_virtual_machine" "compute" {
  name                  = var.res_compute_name
  location              = var.res_location
  resource_group_name   = var.res_compute_rg_name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = var.res_compute_size
  availability_set_id   = var.res_avset_id

  // storage_image_reference {
  //   publisher = "MicrosoftWindowsServer"
  //   offer     = "WindowsServer"
  //   sku       = "2016-Datacenter"
  //   version   = "latest"
  // }

  storage_image_reference {
    id = var.res_image_id
  }


  storage_os_disk {
    name              = var.res_compute_os_disk_name
    caching           = "None"
    create_option     = var.res_storage_os_create_option
    managed_disk_type = var.res_storage_os_disk_type
  }

  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_data_disk {
    name              = var.res_compute_data_disk_name
    managed_disk_type = var.res_storage_data_disk_type
    create_option     = var.res_storage_data_create_option
    lun               = 0
    disk_size_gb      = var.res_storage_data_disk_size
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

resource "azurerm_recovery_services_protected_vm" "bkup" {
  resource_group_name = var.res_bkup_vault_rg_name
  recovery_vault_name = var.res_bkup_vault_name
  source_vm_id        = azurerm_virtual_machine.compute.id
  backup_policy_id    = var.res_bkup_vault_policy_id
}
