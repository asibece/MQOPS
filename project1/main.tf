#####################################################################
##
##      Created 7/30/18 by ashik for project1
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "aws" {
  version = "~> 1.8"
}


resource "aws_instance" "TEST1" {
  ami = "${var.TEST1_ami}"
  instance_type = "${var.TEST1_aws_instance_type}"
  tags {
    Name = "${var.TEST1_name}"
  }
}
