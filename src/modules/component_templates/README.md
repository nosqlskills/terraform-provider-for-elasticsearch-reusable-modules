# Terraform Module: Cluster Settings

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

This module aims to standardise and simplify the deployment of common component templates to make life easier.
Component templates are enabled via flags.

## Features

- **Standardised Component Templates**: In order to override Elasticsearch built-in indexes you need to create and configure @custom component templates. Set a variable for each component type to get all of the related component templates.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_elasticstack"></a> [elasticstack](#provider\_elasticstack) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [elasticstack_elasticsearch_component_template.logs-apm-app-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |
| [elasticstack_elasticsearch_component_template.logs-apm-error-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |
| [elasticstack_elasticsearch_component_template.metrics-apm-app-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |
| [elasticstack_elasticsearch_component_template.metrics-apm-internal-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |
| [elasticstack_elasticsearch_component_template.traces-apm-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |
| [elasticstack_elasticsearch_component_template.traces-apm-rum-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apm_enabled"></a> [apm\_enabled](#input\_apm\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_logs-apm-app-custom_refresh_interval"></a> [logs-apm-app-custom\_refresh\_interval](#input\_logs-apm-app-custom\_refresh\_interval) | n/a | `string` | `"30s"` | no |
| <a name="input_logs-apm-app-custom_shards"></a> [logs-apm-app-custom\_shards](#input\_logs-apm-app-custom\_shards) | n/a | `string` | `"3"` | no |
| <a name="input_logs-apm-error-custom_refresh_interval"></a> [logs-apm-error-custom\_refresh\_interval](#input\_logs-apm-error-custom\_refresh\_interval) | n/a | `string` | `"30s"` | no |
| <a name="input_logs-apm-error-custom_shards"></a> [logs-apm-error-custom\_shards](#input\_logs-apm-error-custom\_shards) | n/a | `string` | `"3"` | no |
| <a name="input_metrics-apm-app-custom_refresh_interval"></a> [metrics-apm-app-custom\_refresh\_interval](#input\_metrics-apm-app-custom\_refresh\_interval) | n/a | `string` | `"30s"` | no |
| <a name="input_metrics-apm-app-custom_shards"></a> [metrics-apm-app-custom\_shards](#input\_metrics-apm-app-custom\_shards) | n/a | `string` | `"3"` | no |
| <a name="input_metrics-apm-internal-custom_refresh_interval"></a> [metrics-apm-internal-custom\_refresh\_interval](#input\_metrics-apm-internal-custom\_refresh\_interval) | n/a | `string` | `"30s"` | no |
| <a name="input_metrics-apm-internal-custom_shards"></a> [metrics-apm-internal-custom\_shards](#input\_metrics-apm-internal-custom\_shards) | n/a | `string` | `"3"` | no |
| <a name="input_traces-apm-custom_refresh_interval"></a> [traces-apm-custom\_refresh\_interval](#input\_traces-apm-custom\_refresh\_interval) | n/a | `string` | `"30s"` | no |
| <a name="input_traces-apm-custom_shards"></a> [traces-apm-custom\_shards](#input\_traces-apm-custom\_shards) | n/a | `string` | `"3"` | no |
| <a name="input_traces-apm-rum-custom_refresh_interval"></a> [traces-apm-rum-custom\_refresh\_interval](#input\_traces-apm-rum-custom\_refresh\_interval) | n/a | `string` | `"30s"` | no |
| <a name="input_traces-apm-rum-custom_shards"></a> [traces-apm-rum-custom\_shards](#input\_traces-apm-rum-custom\_shards) | n/a | `string` | `"3"` | no |


### Example Input Configuration

To use this module with custom inputs, you can create a `terraform.tfvars` file:

```hcl
apm_enabled = "true"
```

## Module Outputs

No outputs.

## Best Practices

- Set shard count, replicas and refresh interval to match your system requirements.