resource "aws_s3_bucket" "my_created_bucket_3842" {
    bucket = var.bucket_name
   
}

resource "aws_s3_bucket_acl" "bucket_acl" {
    bucket = aws_s3_bucket.my_created_bucket_3842.id
    acl = "private"
}

