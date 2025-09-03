resource "aws_vpc" "main_vpc" {
    cidr_block = var.vpc_cidr
    tags = { Name = "MainVPC" }  
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.main_vpc.id
    cidr_block = var.public_subnet_cidr
    map_public_ip_on_launch = true
    availability_zone = "ap-south-1a"

    tags = { Name = "PublicSubnet" }  
}

