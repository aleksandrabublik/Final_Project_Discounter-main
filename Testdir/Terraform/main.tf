data "aws_vpc" "main" {
  id = var.vpc_id
}

resource "aws_key_pair" "generate_key_name" {
  key_name   = var.key_name
  public_key = file("${path.module}/files/${var.public_key}")
}

resource "aws_security_group" "jenkins" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = data.aws_vpc.main.id

  ingress {
    description = "Ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Jenkins"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
 ingress {
    description = "ProjectbyApplication"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "prod_environment" {
  key_name        = aws_key_pair.generate_key_name.key_name
  ami             = var.instance_ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.jenkins.name]
  
  tags = {
    Name = "InstancebyProject"
  }
}
  