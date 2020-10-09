output "res_out_compute_id" {
  value = azurerm_virtual_machine.compute.id
}

output "res_out_compute_private_ip" {
  value = azurerm_network_interface.nic.private_ip_address
}

output "res_out_compute_name" {
  value = azurerm_virtual_machine.compute.name
}
