resource "aws_ecs_cluster" "this" {
  name               = var.name
  tags               = var.tags
  capacity_providers = var.capacity_providers

  dynamic "setting" {
    for_each = var.setting
    content {
      name  = setting.value["name"]
      value = setting.value["value"]
    }
  }

  dynamic "default_capacity_provider_strategy" {
    for_each = var.default_capacity_provider_strategy
    content {
      capacity_provider = default_capacity_provider_strategy.value["capacity_provider"]
      weight            = default_capacity_provider_strategy.value["weight"]
      base              = default_capacity_provider_strategy.value["base"]
    }
  }
}
