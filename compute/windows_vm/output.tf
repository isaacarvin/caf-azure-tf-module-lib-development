output "res_out_compute_id" {
  value = azurerm_windows_virtual_machine.win.*.id
}

output "res_out_compute_private_ip" {
  value = azurerm_network_interface.nic.*.private_ip_address
}

output "res_out_nic_ids" {
  value = azurerm_network_interface.nic.*.id
}

output "res_out_compute_name" {
  value = azurerm_windows_virtual_machine.win.*.name
}

output "res_out_compute_info" {
    value = zipmap(azurerm_windows_virtual_machine.win.*.name, azurerm_network_interface.nic.*.private_ip_address)
}
