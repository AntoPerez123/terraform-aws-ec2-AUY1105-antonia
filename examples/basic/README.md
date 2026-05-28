# Ejemplo básico de uso del módulo EC2

Este ejemplo muestra cómo utilizar el módulo `terraform-aws-ec2-AUY1105-antonia` desde un proyecto Terraform.

## Recursos creados

- Instancia EC2.
- IAM Role para EC2.
- IAM Instance Profile.
- Volumen raíz cifrado.
- Metadata options con IMDSv2 obligatorio.

## Requisitos previos

Para usar este módulo se necesita contar previamente con:

- Una subnet existente.
- Un security group existente.
- Una AMI válida para la región seleccionada.

## Uso

```bash
terraform init
terraform validate
terraform plan
terraform apply