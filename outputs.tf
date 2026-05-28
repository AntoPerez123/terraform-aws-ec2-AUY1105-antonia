output "instance_id" {
  description = "ID de la instancia EC2 creada por el módulo."
  value       = aws_instance.this.id
}

output "instance_ip" {
  description = "IP pública de la instancia EC2 creada por el módulo."
  value       = aws_instance.this.public_ip
}

output "instance_private_ip" {
  description = "IP privada de la instancia EC2 creada por el módulo."
  value       = aws_instance.this.private_ip
}

output "iam_instance_profile_name" {
  description = "Nombre del IAM Instance Profile asociado a la instancia EC2."
  value       = aws_iam_instance_profile.ec2_profile.name
}