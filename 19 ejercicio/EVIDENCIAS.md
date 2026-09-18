# Evidencias - 19 ejercicio

$ terraform init
Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v6.65.0...
- Installed hashicorp/aws v6.65.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

$ terraform fmt
main.tf
outputs.tf
variables.tf

$ terraform validate
Success! The configuration is valid.

$ terraform plan
data.aws_ami.amazon_linux: Reading...
data.aws_ami.amazon_linux: Read complete after 1s [id=ami-0cdb4c9b0d678e416]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.servidor will be created
  + resource "aws_instance" "servidor" {
      + ami                                  = "ami-0cdb4c9b0d678e416"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + id                                   = (known after apply)
      + instance_type                        = "t2.micro"
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "proyecto-final-aula-ec2"
        }
      + vpc_security_group_ids               = (known after apply)
    }

  # aws_internet_gateway.gw will be created
  + resource "aws_internet_gateway" "gw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + tags     = {
          + "Name" = "proyecto-final-aula-igw"
        }
      + vpc_id   = (known after apply)
    }

  # aws_route_table.publica will be created
  + resource "aws_route_table" "publica" {
      + id               = (known after apply)
      + route            = [
          + {
              + cidr_block = "0.0.0.0/0"
              + gateway_id = (known after apply)
            },
        ]
      + tags             = {
          + "Name" = "proyecto-final-aula-rt-publica"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.publica will be created
  + resource "aws_route_table_association" "publica" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_s3_bucket.bucket will be created
  + resource "aws_s3_bucket" "bucket" {
      + arn                         = (known after apply)
      + bucket                      = "proyecto-final-aula-014181419088-s3"
      + id                          = (known after apply)
      + tags                        = {
          + "Name" = "proyecto-final-aula-s3"
        }
    }

  # aws_security_group.web_sg will be created
  + resource "aws_security_group" "web_sg" {
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = ["0.0.0.0/0"]
              + from_port        = 22
              + protocol         = "tcp"
              + to_port          = 22
            },
          + {
              + cidr_blocks      = ["0.0.0.0/0"]
              + from_port        = 80
              + protocol         = "tcp"
              + to_port          = 80
            },
        ]
      + egress                 = [
          + {
              + cidr_blocks      = ["0.0.0.0/0"]
              + from_port        = 0
              + protocol         = "-1"
              + to_port          = 0
            },
        ]
      + name                   = "proyecto-final-aula-web-sg"
      + tags                   = {
          + "Name" = "proyecto-final-aula-web-sg"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_subnet.privada will be created
  + resource "aws_subnet" "privada" {
      + cidr_block                                     = "10.100.2.0/24"
      + id                                             = (known after apply)
      + tags                                           = {
          + "Name" = "proyecto-final-aula-subnet-privada"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.publica will be created
  + resource "aws_subnet" "publica" {
      + cidr_block                                     = "10.100.1.0/24"
      + id                                             = (known after apply)
      + map_public_ip_on_launch                        = true
      + tags                                           = {
          + "Name" = "proyecto-final-aula-subnet-publica"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + cidr_block                           = "10.100.0.0/16"
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + id                                   = (known after apply)
      + tags                                 = {
          + "Name" = "proyecto-final-aula-vpc"
        }
    }

Plan: 9 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + bucket_name   = (known after apply)
  + ec2_id        = (known after apply)
  + ec2_public_ip = (known after apply)
  + vpc_id        = (known after apply)

$ terraform apply
aws_vpc.main: Creating...
aws_s3_bucket.bucket: Creating...
aws_vpc.main: Creation complete after 4s [id=vpc-03c480be86f38b7a5]
aws_internet_gateway.gw: Creating...
aws_subnet.privada: Creating...
aws_subnet.publica: Creating...
aws_security_group.web_sg: Creating...
aws_internet_gateway.gw: Creation complete after 1s [id=igw-010551ea4dff36683]
aws_route_table.publica: Creating...
aws_subnet.privada: Creation complete after 1s [id=subnet-01a3f4ddaae249f29]
aws_route_table.publica: Creation complete after 2s [id=rtb-092282be0f9dcd4d7]
aws_security_group.web_sg: Creation complete after 4s [id=sg-075313ae6504e08d2]
aws_subnet.publica: Creation complete after 12s [id=subnet-01f0cb35f105c59ec]
aws_route_table_association.publica: Creating...
aws_instance.servidor: Creating...
aws_route_table_association.publica: Creation complete after 1s [id=rtbassoc-06ce557e6ae98bd85]
aws_instance.servidor: Creation complete after 15s [id=i-0c8bed5b79689a4ae]

$ terraform output
ec2_id = "i-0c8bed5b79689a4ae"
ec2_public_ip = "98.92.199.11"
vpc_id = "vpc-03c480be86f38b7a5"
bucket_name = "proyecto-final-aula-014181419088-s3"

$ terraform destroy
aws_route_table_association.publica: Destroying... [id=rtbassoc-06ce557e6ae98bd85]
aws_subnet.privada: Destroying... [id=subnet-01a3f4ddaae249f29]
aws_instance.servidor: Destroying... [id=i-0c8bed5b79689a4ae]
aws_route_table_association.publica: Destruction complete after 1s
aws_route_table.publica: Destroying... [id=rtb-092282be0f9dcd4d7]
aws_subnet.privada: Destruction complete after 2s
aws_route_table.publica: Destruction complete after 1s
aws_internet_gateway.gw: Destroying... [id=igw-010551ea4dff36683]
aws_internet_gateway.gw: Destruction complete after 19s
aws_instance.servidor: Destruction complete after 22s
aws_security_group.web_sg: Destroying... [id=sg-075313ae6504e08d2]
aws_subnet.publica: Destroying... [id=subnet-01f0cb35f105c59ec]
aws_subnet.publica: Destruction complete after 1s
aws_security_group.web_sg: Destruction complete after 1s
aws_vpc.main: Destroying... [id=vpc-03c480be86f38b7a5]
aws_vpc.main: Destruction complete after 1s

Destroy complete! Resources: 9 destroyed.
