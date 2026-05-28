# terraform-aws-ec2-AUY1105-antonia

Módulo Terraform para la creación de recursos de cómputo en AWS, desarrollado para la Evaluación Parcial N°2 de la asignatura AUY1105 - Infraestructura como Código II.

## Objetivo del repositorio

Este repositorio contiene un módulo reutilizable de Terraform encargado de crear una instancia EC2 en AWS.

El módulo permite crear:

- Una instancia EC2.
- Un IAM Role para EC2.
- Un IAM Instance Profile.
- Configuración de monitoreo.
- Configuración de volumen raíz cifrado.
- Configuración de metadata options con IMDSv2 obligatorio.

## Propósito del módulo

El propósito de este módulo es desacoplar la configuración de cómputo del repositorio principal de infraestructura, permitiendo reutilizar el código en distintos proyectos o ambientes.

Este módulo forma parte de la modularización del código trabajado en la Evaluación Parcial N°1.

## Recursos creados

| Recurso | Descripción |
|---|---|
| `aws_instance` | Crea la instancia EC2 |
| `aws_iam_role` | Crea el rol IAM para EC2 |
| `aws_iam_instance_profile` | Asocia el rol IAM a la instancia |

## Uso básico

```hcl
module "computo" {
  source = "github.com/AntoPerez123/terraform-aws-ec2-AUY1105-antonia?ref=v1.0.0"

  project_name       = "auy1105-antonia"
  ami_id             = "ami-0c02fb55956c7d316"
  instance_type      = "t2.micro"
  subnet_id          = module.redes.subnet_ids[0]
  security_group_ids = [module.redes.security_group_id]
}

Requisitos
Herramienta	Versión
Terraform	>= 1.5.0
AWS Provider	~> 5.0

Instrucciones de uso
Configurar credenciales de AWS.
Crear o utilizar una VPC, subnet y security group existentes.
Llamar al módulo usando el bloque module.
Ejecutar los comandos:
terraform init
terraform validate
terraform plan
terraform apply
Versionado

Este módulo utiliza versionado semántico.

v0.1.0: estructura inicial del módulo.
v1.0.0: versión estable del módulo de cómputo.


Autora

Antonia Pérez
AUY1105 - Infraestructura como Código II
Duoc UC