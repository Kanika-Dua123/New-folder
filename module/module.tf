module "s3" {
    source = "../s3"
    #bucket name should be unique
    bucket_name = var.bucket_name
}

module "vpc" {
  source = "../vpc"
  vpc_cidr  = "10.0.0.0/24"
}

module "ec2"{
  source  = "../ec2"
  instance_type = var.instance_type
  ami = "ami-08aa6da4f5856a9d2"
  tags = var.tags
}