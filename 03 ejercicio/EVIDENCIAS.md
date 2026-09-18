# Evidencias - 03 ejercicio
Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/03 
ejercicio
$ terraform validate
Success! The configuration is valid.


Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/03 
ejercicio
$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource 
actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.10.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "terraform-vpc-aula"
        }
      + tags_all                             = {
          + "Name" = "terraform-vpc-aula"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to  
take exactly these actions if you run "terraform apply" now.

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/03 
ejercicio
$ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource 
actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be created
  + resource "aws_vpc" "vpc_aula" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.10.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "terraform-vpc-aula"
        }
      + tags_all                             = {
          + "Name" = "terraform-vpc-aula"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.vpc_aula: Creating...
aws_vpc.vpc_aula: Creation complete after 3s [id=vpc-0151d4b927128f29d]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/03 
ejercicio
$ terraform state list
aws_vpc.vpc_aula

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/03 
ejercicio
$ terraform destroy
aws_vpc.vpc_aula: Refreshing state... [id=vpc-0151d4b927128f29d]

Terraform used the selected providers to generate the following execution plan. Resource 
actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be destroyed
  - resource "aws_vpc" "vpc_aula" {
      - arn                                  = "arn:aws:ec2:us-east-1:014181419088:vpc/vpc-0151d4b927128f29d" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.10.0.0/16" -> null
      - default_network_acl_id               = "acl-0f531d11b2b9cf215" -> null
      - default_route_table_id               = "rtb-0e0c62f7226a560fd" -> null
      - default_security_group_id            = "sg-0586d57a54f7f549f" -> null
      - dhcp_options_id                      = "dopt-0fb12bae8f7e48aa4" -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-0151d4b927128f29d" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-0e0c62f7226a560fd" -> null
      - owner_id                             = "014181419088" -> null
      - tags                                 = {
          - "Name" = "terraform-vpc-aula"
        } -> null
      - tags_all                             = {
          - "Name" = "terraform-vpc-aula"
        } -> null
        # (4 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_vpc.vpc_aula: Destroying... [id=vpc-0151d4b927128f29d]
aws_vpc.vpc_aula: Destruction complete after 1s

Destroy complete! Resources: 1 destroyed.

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/03 
ejercicio
