# Evidencias - 16 ejercicio

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

$ terraform import aws_vpc.vpc_importada vpc-02d3583befdf32845
aws_vpc.vpc_importada: Importing from ID "vpc-02d3583befdf32845"...
aws_vpc.vpc_importada: Import prepared!
  Prepared aws_vpc for import
aws_vpc.vpc_importada: Refreshing state... [id=vpc-02d3583befdf32845]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.

$ terraform state list
aws_vpc.vpc_importada

$ terraform plan
aws_vpc.vpc_importada: Refreshing state... [id=vpc-02d3583befdf32845]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration
and found no differences, so no changes are needed.

$ terraform destroy
aws_vpc.vpc_importada: Refreshing state... [id=vpc-02d3583befdf32845]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_vpc.vpc_importada will be destroyed
  - resource "aws_vpc" "vpc_importada" {
      - arn                                  = "arn:aws:ec2:us-east-1:014181419088:vpc/vpc-02d3583befdf32845" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.70.0.0/16" -> null
      - default_network_acl_id               = "acl-05bc6eb442918f9f7" -> null
      - default_route_table_id               = "rtb-053e0a1757405ebff" -> null
      - default_security_group_id            = "sg-014641f2f2932977f" -> null
      - dhcp_options_id                      = "dopt-0fb12bae8f7e48aa4" -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-02d3583befdf32845" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-053e0a1757405ebff" -> null
      - owner_id                             = "014181419088" -> null
      - region                               = "us-east-1" -> null
      - tags                                 = {} -> null
      - tags_all                             = {} -> null
        # (4 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 1 to destroy.
aws_vpc.vpc_importada: Destroying... [id=vpc-02d3583befdf32845]
aws_vpc.vpc_importada: Destruction complete after 2s

Destroy complete! Resources: 1 destroyed.
