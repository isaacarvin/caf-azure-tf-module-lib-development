# Resource: Netscaler Instance
resource "azurerm_virtual_machine" "compute" {
  name                         = var.res_compute_name
  location                     = var.res_location
  resource_group_name          = var.res_compute_rg
  primary_network_interface_id = var.res_primary_nic_id
  network_interface_ids        = var.res_nics_ids
  vm_size                      = var.res_compute_size
  availability_set_id          = var.res_avset_id

  plan {
    name      = "netscaler10standard"
    product   = "netscalervpx-120"
    publisher = "citrix"
  }

  storage_image_reference {
    publisher = "citrix"
    offer     = "netscalervpx-120"
    sku       = "netscaler10standard"
    version   = "120.61.08"
  }

  storage_os_disk {
    name              = var.res_compute_os_disk_name
    caching           = "None"
    create_option     = "FromImage"
    managed_disk_type = "Premium_LRS"

  }

  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  os_profile {
    computer_name  = var.res_os_compute_name
    admin_username = var.res_compute_username
    admin_password = var.res_compute_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = var.res_tags
}