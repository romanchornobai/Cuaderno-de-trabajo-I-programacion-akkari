# Evidencias - 02 ejercicio
Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/02 
ejercicio
$ aws sts get-caller-identity --region us-east-1
{
    "UserId": "AROAQGTKHJBIHOB2IRUSC:user4549478=a29314@svalero.com",
    "Account": "014181419088",
    "Arn": "arn:aws:sts::014181419088:assumed-role/voclabs/user4549478=a29314@svalero.com"
}


Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/02 
ejercicio
$ terraform init
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 5.0"...
- Installing hashicorp/aws v5.100.0...
- Installed hashicorp/aws v5.100.0 (signed by HashiCorp)

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

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/02 
ejercicio
$ terraform validate
Success! The configuration is valid.


Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/02 
ejercicio
$ terraform plan

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no
differences, so no changes are needed.

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/02 
ejercicio
$ terraform apply

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no
differences, so no changes are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/02 
ejercicio
$ terraform destroy

No changes. No objects need to be destroyed.

Either you have not created any objects yet or the existing objects were already deleted
outside of Terraform.

Destroy complete! Resources: 0 destroyed.

Roman@DESKTOP-IP3CKQH MINGW64 ~/Desktop/DAM/PROGRAMACION AKKARI/Cuaderno de trabajo I/02 
ejercicio
$