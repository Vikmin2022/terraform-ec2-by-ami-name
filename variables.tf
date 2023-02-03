variable "environment" {
  type    = string
}

variable "region" {
  type    = string
}

variable "ami_name" {
  type    = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

data "aws_ami" "packer" {
  most_recent = true
  filter {
    name   = "name"
    values = [var.ami_name]
  }
  owners = ["self"]
}
