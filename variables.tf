variable "project_name" {
  description = "Prefix for all resource names"
  type        = string
  default     = "devops-tp"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "admin_username" {
  description = "Admin username for the Linux VM"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password for the Linux VM"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_B1s"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "subscription_id" {
  description = "Azure subscription ID to use for the provider"
  type        = string
  default     = "e3187311-f8b8-4466-9b9c-cee816973505"
}
