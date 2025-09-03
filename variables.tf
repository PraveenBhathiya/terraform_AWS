variable "aws_region" {
    default = "ap-south-1"  
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"  
}

variable "public_subnet_cidr" {
    default = "10.0.1.0/24"
}

variable "instance_type" {
    default = "t2.micro"  
}

variable "key_name" {
    default = "terraform-keypair"  
}

variable "bucket_name" {
    default = "terraform-bucket-demo-3842"  
}

