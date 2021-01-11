# terraform-aws-ecs-cluster

## GlobalDataNet

> <https://globaldatanet.com> = Cloud-Native Applications, Build with services, not servers

Provides an [ECS cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster).

Examples:

- [Simple](./examples/simple/)

## Requirements

| Name      | Version   |
| --------- | --------- |
| terraform | >= 0.14.0 |
| aws       | >= 3.20.0 |

## Providers

| Name | Version   |
| ---- | --------- |
| aws  | >= 3.20.0 |

## Inputs

| Name                                  | Description                                                                                                                                          | Type                                                                                                                                                        | Default                                                                                       | Required |
| ------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | :------: |
| capacity\_providers                   | (Optional) List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE\_SPOT. | `list(string)`                                                                                                                                              | `null`                                                                                        |    no    |
| default\_capacity\_provider\_strategy | (Optional) The capacity provider strategy to use by default for the cluster. Can be one or more.                                                     | <pre>list(object({<br>    capacity_provider = string<br>    weight            = optional(number)<br>    weight            = optional(number)<br>  }))</pre> | `[]`                                                                                          |    no    |
| name                                  | (Required) The name of the cluster (up to 255 letters, numbers, hyphens, and underscores)                                                            | `string`                                                                                                                                                    | n/a                                                                                           |   yes    |
| setting                               | (optional) Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluste          | `list(map(string))`                                                                                                                                         | <pre>[<br>  {<br>    "name": "containerInsights",<br>    "value": "enabled"<br>  }<br>]</pre> |    no    |
| tags                                  | (Optional) Key-value mapping of resource tags                                                                                                        | `map(string)`                                                                                                                                               | n/a                                                                                           |   yes    |

## Outputs

| Name | Description                                                |
| ---- | ---------------------------------------------------------- |
| arn  | The Amazon Resource Name (ARN) that identifies the cluster |
| id   | The Amazon Resource Name (ARN) that identifies the cluster |
| name | Name of the cluster                                        |