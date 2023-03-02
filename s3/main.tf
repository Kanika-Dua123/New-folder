resource "aws_s3_bucket" "s3" {
    bucket = var.bucket_name

tags={
    Name="kanika_s3"
    purpose="Training"
    Owner="kanika.dua@cloudeq.com"
     }
}

