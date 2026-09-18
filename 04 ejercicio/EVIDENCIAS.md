# Evidencias - 04 ejercicio
Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/04 
ejercicio
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

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/04 
ejercicio
$ terraform validate
Success! The configuration is valid.


Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/04 
ejercicio
$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource 
actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_subnet.subnet_a will be created
  + resource "aws_subnet" "subnet_a" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.10.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.subnet_b will be created
  + resource "aws_subnet" "subnet_b" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.10.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

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
      + region                               = "us-east-1"
      + tags_all                             = (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to  
take exactly these actions if you run "terraform apply" now.

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/04 
ejercicio
$ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource 
actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_subnet.subnet_a will be created
  + resource "aws_subnet" "subnet_a" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.10.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.subnet_b will be created
  + resource "aws_subnet" "subnet_b" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.10.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block                                = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + region                                         = "us-east-1"
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

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
      + region                               = "us-east-1"
      + tags_all                             = (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_vpc.vpc_aula: Creating...
aws_vpc.vpc_aula: Creation complete after 3s [id=vpc-025de63a80a03c80d]
aws_subnet.subnet_a: Creating...
aws_subnet.subnet_b: Creating...
aws_subnet.subnet_b: Creation complete after 1s [id=subnet-09f230d34d5076a8e]
aws_subnet.subnet_a: Creation complete after 1s [id=subnet-0b82dc8fd292f09da]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/04 
ejercicio
$ terraform destroy
aws_vpc.vpc_aula: Refreshing state... [id=vpc-025de63a80a03c80d]
aws_subnet.subnet_a: Refreshing state... [id=subnet-0b82dc8fd292f09da]
aws_subnet.subnet_b: Refreshing state... [id=subnet-09f230d34d5076a8e]

Terraform used the selected providers to generate the following execution plan. Resource 
actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_subnet.subnet_a will be destroyed
  - resource "aws_subnet" "subnet_a" {
      - arn                                            = "arn:aws:ec2:us-east-1:014181419088:subnet/subnet-0b82dc8fd292f09da" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1b" -> null
      - availability_zone_id                           = "use1-az6" -> null
      - cidr_block                                     = "10.10.1.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0b82dc8fd292f09da" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "014181419088" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - region                                         = "us-east-1" -> null
      - tags                                           = {} -> null
      - tags_all                                       = {} -> null
      - vpc_id                                         = "vpc-025de63a80a03c80d" -> null 
        # (4 unchanged attributes hidden)
    }

  # aws_subnet.subnet_b will be destroyed
  - resource "aws_subnet" "subnet_b" {
      - arn                                            = "arn:aws:ec2:us-east-1:014181419088:subnet/subnet-09f230d34d5076a8e" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "us-east-1b" -> null
      - availability_zone_id                           = "use1-az6" -> null
      - cidr_block                                     = "10.10.2.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-09f230d34d5076a8e" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "014181419088" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - region                                         = "us-east-1" -> null
      - tags                                           = {} -> null
      - tags_all                                       = {} -> null
      - vpc_id                                         = "vpc-025de63a80a03c80d" -> null 
        # (4 unchanged attributes hidden)
    }

  # aws_vpc.vpc_aula will be destroyed
  - resource "aws_vpc" "vpc_aula" {
      - arn                                  = "arn:aws:ec2:us-east-1:014181419088:vpc/vpc-025de63a80a03c80d" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.10.0.0/16" -> null
      - default_network_acl_id               = "acl-0ff673225f7171fa6" -> null
      - default_route_table_id               = "rtb-0f5e6d6efb5e67e6b" -> null
      - default_security_group_id            = "sg-04a841b6633d59df2" -> null
      - dhcp_options_id                      = "dopt-0fb12bae8f7e48aa4" -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-025de63a80a03c80d" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-0f5e6d6efb5e67e6b" -> null
      - owner_id                             = "014181419088" -> null
      - region                               = "us-east-1" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
        # (4 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 3 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_subnet.subnet_a: Destroying... [id=subnet-0b82dc8fd292f09da]
aws_subnet.subnet_b: Destroying... [id=subnet-09f230d34d5076a8e]
aws_subnet.subnet_b: Destruction complete after 1s
aws_subnet.subnet_a: Destruction complete after 1s
aws_vpc.vpc_aula: Destroying... [id=vpc-025de63a80a03c80d]
aws_vpc.vpc_aula: Destruction complete after 1s

Destroy complete! Resources: 3 destroyed.

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/04 
ejercicio
$