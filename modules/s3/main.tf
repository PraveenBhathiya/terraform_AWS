resource "aws_s3_bucket" "my_created_bucket_3842" {
    bucket = var.bucket_name
    force_destroy = true # optional: allows bucket deletion with objects
    tags = {
        Name = "MyTerraformBucket"
    }
   
}


