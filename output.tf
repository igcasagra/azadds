output "public_ip_address_vm-adds" {
  value = azurerm_windows_virtual_machine.myvirtualmachine.public_ip_address
}