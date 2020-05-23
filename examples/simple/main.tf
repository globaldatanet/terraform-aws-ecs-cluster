provider "aws" {
  region  = "eu-central-1"
  profile = "hapag-dev"
  # Make it faster by skipping the following
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


module ecs_cluster {
  source                                    = "../.."
  name                                      = "test-mhmd"
  capacity_providers                        = ["FARGATE"]
  setting_name                              = "containerInsights"
  setting_value                             = "enabled"
  default_capacity_provider_strategy_name   = "FARGATE"
  default_capacity_provider_strategy_weight = 100
  default_capacity_provider_strategy_base   = 0

  tags = {
    Terraform = "test"
    owner     = "yahyamo"
  }

}

output "id" {
  value = module.ecs_cluster.id
}

output "arn" {
  value = module.ecs_cluster.arn
}
