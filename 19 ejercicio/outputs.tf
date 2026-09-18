output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.main.id
}

output "ec2_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.servidor.id
}

output "ec2_public_ip" {
  description = "IP publica de la instancia EC2"
  value       = aws_instance.servidor.public_ip
}

output "bucket_name" {
  description = "Nombre del bucket S3 creado"
  value       = aws_s3_bucket.bucket.id
}
