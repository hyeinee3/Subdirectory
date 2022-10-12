resource "aws_vpc" "dir-root" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "ROOT-VPC"
  }
}
