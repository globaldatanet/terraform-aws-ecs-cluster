variable "name" {
  type        = string
  description = "(Required) The name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
}

variable "capacity_providers" {
  type        = list(string)
  default     = null
  description = "(Optional) List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
}

variable "setting" {
  type        = list(map(string))
  description = "(optional) Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluste"
  default = [{
    name  = "containerInsights"
    value = "enabled"
  }]
}

variable "default_capacity_provider_strategy" {
  type = list(object({
    capacity_provider = string
    weight            = optional(number)
    weight            = optional(number)
  }))
  description = "(Optional) The capacity provider strategy to use by default for the cluster. Can be one or more."
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "(Optional) Key-value mapping of resource tags"
}
