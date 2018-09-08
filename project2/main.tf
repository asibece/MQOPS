#####################################################################
##
##      Created 9/8/18 by Ashik for project2
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
  version = "~> 1.1"
}


resource "azurerm_virtual_machine" "TESTVM3" {
  name                  = "${var.TESTVM3_name}"
  location              = "${var.vm_location}"
  vm_size               = "${var.vm_size}"
  resource_group_name   = "${azurerm_resource_group.TESTVM3RG.name}"
  tags {
    Name = "${var.TESTVM3_name}"
  }
  os_profile {
    computer_name  = "${var.TESTVM3_os_profile_name}"
    admin_username = "${var.TESTVM3_azure_user}"
    admin_password = "${var.TESTVM3_azure_user_password}"
  }
  storage_image_reference {
    publisher = "${var.TESTVM3_publisher}"
    offer     = "${var.TESTVM3_offer}"
    sku       = "${var.TESTVM3_sku}"
    version   = "${var.TESTVM3_version}"
  }
  os_profile_linux_config {
    disable_password_authentication = "${var.TESTVM3_disable_password_authentication}"
  }
  storage_os_disk {
    name              = "${var.TESTVM3_os_disk_name}"
    caching           = "${var.TESTVM3_os_disk_caching}"
    create_option     = "${var.TESTVM3_os_disk_create_option}"
    managed_disk_type = "${var.TESTVM3_os_disk_managed_disk_type}"
  }
  delete_os_disk_on_termination = "${var.TESTVM3_os_disk_delete}"
}

resource "azurerm_resource_group" "TESTVM3RG" {
  name     = "TESTVM3RG"
  location = "${var.location}"
}