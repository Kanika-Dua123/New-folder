resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
 
  tags = {
    Name        = "kanika"
    Purpose     ="training"
    Owner       ="kanika.dua@cloudeq.com"
  }
}
resource "aws_subnet" "public" {
  for_each = var.public_subnet_numbers
 
  vpc_id            = aws_vpc.vpc.id
  availability_zone = each.key
 
  # 2,048 IP addresses each
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 4, each.value)
 
  tags = {
     Name        = "kanika"
    Purpose     ="training"
    Owner       ="kanika.dua@cloudeq.com"
  }
}
resource "aws_subnet" "private" {
  for_each = var.private_subnet_numbers
 
  vpc_id            = aws_vpc.vpc.id
  availability_zone = each.key
 
  # 2,048 IP addresses each
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 4, each.value)
 
  tags = {
     Name        = "kanika"
    Purpose     ="training"
    Owner       ="kanika.dua@cloudeq.com"
  }
}