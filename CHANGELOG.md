# Changelog

Todos los cambios importantes de este módulo serán documentados en este archivo.

El formato está basado en Semantic Versioning: MAJOR.MINOR.PATCH.

## [1.0.0] - 2026-05-28

### Added
- Creación del módulo Terraform para cómputo.
- Implementación de instancia EC2.
- Implementación de IAM Role e IAM Instance Profile para la instancia.
- Parametrización de AMI, tipo de instancia, subnet y security groups.
- Definición de outputs para `instance_id`, `instance_ip`, `instance_private_ip` e `iam_instance_profile_name`.
- Incorporación de archivo `versions.tf` con versiones requeridas de Terraform y proveedor AWS.

## [0.1.0] - 2026-05-28

### Added
- Estructura inicial del repositorio.
- Archivos base: `main.tf`, `variables.tf`, `outputs.tf`, `versions.tf`, `README.md`, `CHANGELOG.md` y `.gitignore`.