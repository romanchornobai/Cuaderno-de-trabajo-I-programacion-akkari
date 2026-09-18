variable "region" {
  description = "Región de AWS para desplegar la infraestructura"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "Bloque CIDR de la VPC"
  type        = string
}

variable "subnet_publica_cidr" {
  description = "Bloque CIDR de la subnet pública"
  type        = string
}

variable "subnet_privada_cidr" {
  description = "Bloque CIDR de la subnet privada"
  type        = string
}

variable "nombre_proyecto" {
  description = "Nombre base para los recursos del proyecto"
  type        = string
}
