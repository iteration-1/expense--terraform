#resource "aws_instance" "frontend" {
#  for_each               = var.instance_type
#  ami                    = var.ami
#  instance_type          = each.value["instance_type"]
#  vpc_security_group_ids = ["sg-09880b52d970e879b"]
#
#  tags = {
#    Name = each.key
#  }
#
#}
#
#
#variable "ami" {
#  default = "ami-09c813fb71547fc4f"
#}
#
#variable "instance_type" {
#  default = {
#    frontend = {
#      instance_type = "t3.micro"
#    }
#    mysql = {
#      instance_type = "t3.small"
#    }
#    backend = {
#      instance_type = "t3.micro"
#    }
#  }
#}