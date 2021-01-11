terraform {
  experiments      = [module_variable_optional_attrs]
  required_version = ">= 0.14.0"
  required_providers {
    aws = {
      version = ">= 3.20.0"
      source  = "hashicorp/aws"
    }
  }
}
