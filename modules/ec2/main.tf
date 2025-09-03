resource "aws_security_group" "web_sg" {
    name = "web-sg"
    description = "Allow HTTP & SSH"
    vpc_id = var.vpc_id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "web" {
  ami           = "ami-0f5ee92e2d63afc18"  # Ubuntu 20.04 in ap-south-1
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  # Attach security group
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "webServer"
  }
}



