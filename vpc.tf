resource "aws_vpc" "main" {
  cidr_block       = var.vpc-cidr-block
  instance_tenancy = "default"

  tags = {
    Name = "main-vpc"
  }

  provisioner "local-exec" {
    command = "echo the vpc arn is ${self.arn} > provisioner.txt"
  }
}


resource "null_resource" "vpc-id" {
  provisioner "local-exec" {
    command = "echo $date > date.txt"
  }
}