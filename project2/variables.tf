#####################################################################
##
##      Created 9/8/18 by Ashik. for project2
##
#####################################################################

variable "subscription_id" {
  type = "string"
  description = "Generated"
}

variable "client_id" {
  type = "string"
  description = "Generated"
}

variable "client_secret" {
  type = "string"
  description = "Generated"
}

variable "tenant_id" {
  type = "string"
  description = "Generated"
}

variable "TESTVM3_name" {
  type = "string"
  description = "Generated"
}

variable "vm_location" {
  type = "string"
  description = "Generated"
}

variable "vm_size" {
  type = "string"
  description = "Generated"
}

variable "TESTVM3_os_profile_name" {
  type = "string"
  description = "Specifies the os profile name."
  default = "profilename"
}

variable "TESTVM3_azure_user" {
  type = "string"
  description = "Generated"
}

variable "TESTVM3_azure_user_password" {
  type = "string"
  description = "Generated"
}

variable "TESTVM3_publisher" {
  type = "string"
  default = "MicrosoftWindowsServer"
}

variable "TESTVM3_offer" {
  type = "string"
  default = "WindowsServer"
}

variable "TESTVM3_sku" {
  type = "string"
  default = "Datacenter"
}

variable "TESTVM3_version" {
  type = "string"
  default = "latest"
}

variable "TESTVM3_disable_password_authentication" {
  type = "string"
  description = "Specifies whether to disable password authentication"
  default = "false"
}

variable "TESTVM3_os_disk_name" {
  type = "string"
  description = "Specifies the disk name."
  default ="osdiskname"
}

variable "TESTVM3_os_disk_caching" {
  type = "string"
  description = "Specifies the caching requirements. (Ex:ReadWrite)"
  default="ReadWrite"
}

variable "TESTVM3_os_disk_create_option" {
  type = "string"
  description = "Specifies how the virtual machine should be created. Possible values are Attach (managed disks only) and FromImage."
}

variable "TESTVM3_os_disk_managed_disk_type" {
  type = "string"
  description = "Specifies the type of managed disk to create. Value must be either Standard_LRS or Premium_LRS. Cannot be used when vhd_uri is specified"
  default = "Standard_LRS"
}

variable "TESTVM3_os_disk_delete" {
  type = "string"
  description = "Delete the OS disk automatically when deleting the VM"
  default = true
}

variable "location" {
  type = "string"
  description = "Generated"
}

