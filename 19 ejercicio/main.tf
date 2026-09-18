provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "${var.nombre_proyecto}-vpc"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.nombre_proyecto}-igw"
  }
}

resource "aws_subnet" "publica" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_publica_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.nombre_proyecto}-subnet-publica"
  }
}

resource "aws_subnet" "privada" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_privada_cidr

  tags = {
    Name = "${var.nombre_proyecto}-subnet-privada"
  }
}

resource "aws_route_table" "publica" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "${var.nombre_proyecto}-rt-publica"
  }
}

resource "aws_route_table_association" "publica" {
  subnet_id      = aws_subnet.publica.id
  route_table_id = aws_route_table.publica.id
}

resource "aws_security_group" "web_sg" {
  name        = "${var.nombre_proyecto}-web-sg"
  description = "Permitir trafico HTTP y salida total"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.nombre_proyecto}-web-sg"
  }
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }
}

resource "aws_instance" "servidor" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.publica.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "${var.nombre_proyecto}-ec2"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.nombre_proyecto}-014181419088-s3"

  tags = {
    Name = "${var.nombre_proyecto}-s3"
  }
}
