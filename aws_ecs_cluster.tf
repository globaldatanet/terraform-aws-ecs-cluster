resource "aws_ecs_cluster" "this" {
  name               = var.name
  tags               = var.tags
  capacity_providers = var.capacity_providers

  setting {
    name  = var.setting_name
    value = var.setting_value
  }

  default_capacity_provider_strategy {
    capacity_provider = var.default_capacity_provider_strategy_name
    weight            = var.default_capacity_provider_strategy_weight
    base              = var.default_capacity_provider_strategy_base
  }

}
