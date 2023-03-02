resource "aws_instance" "ec2" {
  ami = var.ami
  instance_type = var.instance_type
  tags = var.tags

  volume_tags = {
    Name = "Kanika"
    Owner = "kanika.dua@cloudeq.com"
    Purpose="Training"
   }
}