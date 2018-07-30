#####################################################################
##
##      Created 7/29/18 by admin. for New_project
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
  key_name = "${aws_key_pair.auth.id}"
  instance_type = "${var.TEST1_aws_instance_type}"
  tags {
    Name = "${var.TEST1_name}"
  }
}

