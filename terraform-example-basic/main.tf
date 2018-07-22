# CONFIGURE OUR AWS PROVIDER
provider "aws" {
  region = "us-east-1"
}

# DEPLOY A SINGLE EC2 INSTANCE
resource "aws_instance" "example" {
  # AMI ID for Amazon Linux AMI 2016.03.0 (HVM)
  ami = "ami-08111162"
  instance_type = "t2.micro"

  tags {
  name = "${var.instance_name}"
  }
}

variable "instance_name" {}