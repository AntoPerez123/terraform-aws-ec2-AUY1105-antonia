variable "project_name" {
  description = "Nombre del proyecto utilizado para etiquetar los recursos."
  type        = string
}

variable "ami_id" {
  description = "ID de la AMI utilizada para crear la instancia EC2."
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2."
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "ID de la subnet donde se desplegará la instancia EC2."
  type        = string
}

variable "security_group_ids" {
  description = "Lista de IDs de security groups asociados a la instancia EC2."
  type        = list(string)
}

variable "enable_monitoring" {
  description = "Habilita el monitoreo detallado de la instancia EC2."
  type        = bool
  default     = true
}

variable "ebs_optimized" {
  description = "Habilita la optimización EBS para la instancia EC2."
  type        = bool
  default     = true
}