resource "azurerm_network_interface" "nic" {
  count               = length(var.res_lin_vm_names)
  name                = "${element(var.res_lin_vm_names, count.index)}-nic"
  location            = var.res_location
  resource_group_name = var.res_lin_vm_rg_name
  tags                = var.res_tags

  ip_configuration {
    name                          = "primary-nic"
    subnet_id                     = var.res_lin_vm_subnet_id
    private_ip_address_allocation = var.res_lin_ip_allocation
  }
}

resource "azurerm_linux_virtual_machine" "lin" {
  count                    = length(var.res_lin_vm_names)
  name                     = element(var.res_lin_vm_names, count.index)
  resource_group_name      = var.res_lin_vm_rg_name
  location                 = var.res_location
  size                     = var.res_lin_vm_size
  admin_username           = var.res_lin_vm_username
  admin_password           = var.res_lin_vm_password
  network_interface_ids    = [ azurerm_network_interface.nic[count.index].id ]
  computer_name            = element(var.res_lin_vm_names, count.index)
  availability_set_id      = var.res_lin_av_set_id
  source_image_id          = var.res_lin_img_id
  tags                     = var.res_tags

  boot_diagnostics {
    storage_account_uri = var.res_lin_boot_diag_uri
  }

  disable_password_authentication = false

  os_disk {
    name                 = "${element(var.res_lin_vm_names, count.index)}-OS-Disk"
    caching              = var.res_lin_os_disk_caching
    storage_account_type = var.res_lin_os_disk_storage_type
  }
}

