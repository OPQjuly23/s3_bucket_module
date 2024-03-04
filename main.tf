n.tf
variable "bucket_name" {
  description = "The name of the S3 bucket"
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name = var.bucket_name
  }
}

output "bucket_id" {
  value = aws_s3_bucket.bucket.id
}

