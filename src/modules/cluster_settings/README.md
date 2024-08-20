# Terraform Module: [Module Name]

Welcome to the **[Module Name]** Terraform module! This README file will guide you through the usage, configuration, and customization of the module. Whether you are deploying this module for the first time or contributing to its development, you'll find all the necessary information here.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [Basic Example](#basic-example)
  - [Advanced Usage](#advanced-usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Best Practices](#best-practices)

## Introduction

[Provide a brief overview of the module's purpose and what problem it solves. Mention the cloud provider(s) it supports and any specific use cases.]

## Features

- **Feature 1**: [Description of feature 1]
- **Feature 2**: [Description of feature 2]
- **Feature 3**: [Description of feature 3]
- [Add more features as needed]

## Getting Started

### Prerequisites

Before using this module, ensure you have the following prerequisites:

- **Terraform**: [Minimum required version, e.g., v1.0.0 or later]
- **Cloud Provider CLI**: [e.g., AWS CLI, Azure CLI, etc.]
- **Other Tools**: [Any other necessary tools or dependencies]

### Basic Example

Here's a basic example of how to use the module:

```hcl
module "example" {
  source = "git::https://github.com/your-username/terraform-[module-name].git"
  
  # Example variables
  variable1 = "value1"
  variable2 = "value2"
}
```

### Advanced Usage

For more advanced use cases, you can customize the module by configuring additional parameters. Here's an example:

```hcl
module "example_advanced" {
  source = "git::https://github.com/your-username/terraform-[module-name].git"
  
  # Advanced configuration
  variable1 = "custom_value1"
  variable2 = "custom_value2"
  variable3 = "custom_value3"
  # Add more customization options as needed
}
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_elasticstack"></a> [elasticstack](#provider\_elasticstack) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [elasticstack_elasticsearch_cluster_settings.cluster_settings](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_cluster_settings) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_create_index"></a> [auto\_create\_index](#input\_auto\_create\_index) | Whether or not a PUT request can automatically create an index | `string` | `"false"` | no |
| <a name="input_cluster_routing_allocation_awareness_attributes"></a> [cluster\_routing\_allocation\_awareness\_attributes](#input\_cluster\_routing\_allocation\_awareness\_attributes) | What attributes to use to tell shards how to balance | `string` | `"k8s_node_name"` | no |
| <a name="input_cluster_routing_allocation_balance_index"></a> [cluster\_routing\_allocation\_balance\_index](#input\_cluster\_routing\_allocation\_balance\_index) | How evenly to balance shards of an index across all nodes | `string` | `"0.85f"` | no |
| <a name="input_cluster_routing_allocation_balance_shard"></a> [cluster\_routing\_allocation\_balance\_shard](#input\_cluster\_routing\_allocation\_balance\_shard) | How evenly to distributes all shards across all nodes | `string` | `"0.85f"` | no |
| <a name="input_cluster_routing_allocation_enable"></a> [cluster\_routing\_allocation\_enable](#input\_cluster\_routing\_allocation\_enable) | What allocation options to use | `string` | `"all"` | no |
| <a name="input_watermark_flood_mapping"></a> [watermark\_flood\_mapping](#input\_watermark\_flood\_mapping) | Mapping of watermark levels for this watermark | `map` | <pre>{<br>  "large_cluster": "98%",<br>  "medium_cluster": "96%",<br>  "small_cluster": "94%"<br>}</pre> | no |
| <a name="input_watermark_high_mapping"></a> [watermark\_high\_mapping](#input\_watermark\_high\_mapping) | Mapping of watermark levels for this watermark | `map` | <pre>{<br>  "large_cluster": "94%",<br>  "medium_cluster": "92%",<br>  "small_cluster": "90%"<br>}</pre> | no |
| <a name="input_watermark_low_mapping"></a> [watermark\_low\_mapping](#input\_watermark\_low\_mapping) | Mapping of watermark levels for this watermark | `map` | <pre>{<br>  "large_cluster": "90%",<br>  "medium_cluster": "88%",<br>  "small_cluster": "86%"<br>}</pre> | no |
| <a name="input_watermark_size"></a> [watermark\_size](#input\_watermark\_size) | This is an opinionated variable that dynamically sets the low, medium and high watermarks for you. Valid options are: small\_cluster, medium\_cluster and large\_cluster. | `string` | `"medium_cluster"` | no |


### Example Input Configuration

To use this module with custom inputs, you can create a `terraform.tfvars` file:

```hcl
variable1 = "my_value"
variable2 = 42
variable3 = ["item1", "item2"]
variable4 = false
```

## Module Outputs

No outputs.

## Best Practices

[Optional: Provide any best practices or tips for using the module effectively. This could include recommendations for scaling, security considerations, or performance optimizations.]