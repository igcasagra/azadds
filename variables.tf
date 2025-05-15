variable "nameresourcegroup" {

default     = "lab-adds-server"
  description = "Name of RG"
}
variable "location1" {
  default     = "eastus"
  description = "Location of VM1."
}

variable "vnet1-location" {
  default     = "eastus"
  description = "Location of the Vnet1."
}

variable "vnet1-name" {
  default = "adds"
}

variable "win_username" {
  description = "Windows Username"
  type        = string
  sensitive   = false
}
variable "win_userpass" {
  description = "Windows Password"
  type        = string
  sensitive   = true
}
variable "my_virtual_machine_size" {
  #default     = "Standard_D2_v4"
  default     = "Standard_B2ms"
  description = "Size of the Virtual Machine"
}

variable "name-vm1" {
  type        = string
  default     = "adds"
  description = "Name of the resource."
}
variable "ip_dns_adds" {
  default = "10.10.1.100"
}