terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "computo" {
  source = "../../"

  project_name       = "auy1105-antonia"
  ami_id             = "ami-0c02fb55956c7d316"
  instance_type      = "t2.micro"
  subnet_id          = "subnet-xxxxxxxxxxxxxxxxx"
  security_group_ids = ["sg-xxxxxxxxxxxxxxxxx"]
}

output "instance_id" {
  value = module.computo.instance_id
}

output "instance_ip" {
  value = module.computo.instance_ip
}

output "instance_private_ip" {
  value = module.computo.instance_private_ip
}