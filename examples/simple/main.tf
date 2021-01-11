provider "aws" {
  region                      = "eu-west-1"
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


module "simple" {
  source = "../.."

  name               = "test-gdn"
  capacity_providers = ["FARGATE"]

  setting = [{
    name  = "containerInsights"
    value = "enabled"
  }]

  tags = {
    Terraform = "Yes"
    owner     = "Mohammed"
  }

}

output "id" {
  value = module.simple.id
}

output "arn" {
  value = module.simple.arn
}
