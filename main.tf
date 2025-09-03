module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = var.vpc_cidr
    public_subnet_cidr = var.public_subnet_cidr
  
}

module "ec2" {
    source = "./modules/ec2"
    instance_type = var.instance_type
    subnet_id = module.vpc.subnet_id
    key_name = var.key_name
    vpc_id = module.vpc.vpc_id
}

module "s3" {
    source = "./modules/s3"
    bucket_name = var.bucket_name
  
}