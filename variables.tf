variable name {
  type        = string
  description = "(Required) The name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
}

variable capacity_providers {
  type        = list(string)
  description = "(Optional) List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
}

variable setting_name {
  type        = string
  description = "(Required) Name of the setting to manage. Valid values: containerInsights."
}

variable setting_value {
  type        = string
  description = "(Required) The value to assign to the setting. Value values are enabled and disabled."
}

variable default_capacity_provider_strategy_name {
  type        = string
  description = "(Required) The short name of the capacity provider."
}

variable default_capacity_provider_strategy_weight {
  type        = number
  description = "(Optional) The relative percentage of the total number of launched tasks that should use the specified capacity provider."
}

variable default_capacity_provider_strategy_base {
  type        = number
  description = "(Optional) The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined."
}

variable tags {
  type        = map(string)
  description = "(Optional) Key-value mapping of resource tags"
}
