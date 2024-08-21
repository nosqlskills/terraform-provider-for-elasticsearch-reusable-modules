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

This module deploys ilm policies that will override the defaults deployed by Elasticsearch.
They manage the @custom component templates that can deployed via a feature flag with the same name in the component templates module.

The defaults in this module:
- roll every 2 days OR when shards reach 50GB
- delete data after 7 days

## Features

- **Standardised Index Lifecycle Policies for @custom templates**: The module deploys all the ilm policies that are needed to manage the @custom component templates for features like apm.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_elasticstack"></a> [elasticstack](#provider\_elasticstack) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [elasticstack_elasticsearch_index_lifecycle.custom-logs-apm-app-policy](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_index_lifecycle) | resource |
| [elasticstack_elasticsearch_index_lifecycle.custom-logs-apm-error-policy](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_index_lifecycle) | resource |
| [elasticstack_elasticsearch_index_lifecycle.custom-metrics-apm-app-policy](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_index_lifecycle) | resource |
| [elasticstack_elasticsearch_index_lifecycle.custom-metrics-apm-internal-policy](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_index_lifecycle) | resource |
| [elasticstack_elasticsearch_index_lifecycle.custom-traces-apm-policy](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_index_lifecycle) | resource |
| [elasticstack_elasticsearch_index_lifecycle.custom-traces-apm-rum-policy](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_index_lifecycle) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apm_enabled"></a> [apm\_enabled](#input\_apm\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_custom-logs-apm-app-policy_max_age_hot"></a> [custom-logs-apm-app-policy\_max\_age\_hot](#input\_custom-logs-apm-app-policy\_max\_age\_hot) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-logs-apm-app-policy_max_primary_shard_size_hot"></a> [custom-logs-apm-app-policy\_max\_primary\_shard\_size\_hot](#input\_custom-logs-apm-app-policy\_max\_primary\_shard\_size\_hot) | n/a | `string` | `"50gb"` | no |
| <a name="input_custom-logs-apm-app-policy_min_age_cold"></a> [custom-logs-apm-app-policy\_min\_age\_cold](#input\_custom-logs-apm-app-policy\_min\_age\_cold) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-logs-apm-app-policy_min_age_delete"></a> [custom-logs-apm-app-policy\_min\_age\_delete](#input\_custom-logs-apm-app-policy\_min\_age\_delete) | n/a | `string` | `"7d"` | no |
| <a name="input_custom-logs-apm-app-policy_searchable_snapshot_cold"></a> [custom-logs-apm-app-policy\_searchable\_snapshot\_cold](#input\_custom-logs-apm-app-policy\_searchable\_snapshot\_cold) | n/a | `string` | `"azure_new"` | no |
| <a name="input_custom-logs-apm-error-policy_max_age_hot"></a> [custom-logs-apm-error-policy\_max\_age\_hot](#input\_custom-logs-apm-error-policy\_max\_age\_hot) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-logs-apm-error-policy_max_primary_shard_size_hot"></a> [custom-logs-apm-error-policy\_max\_primary\_shard\_size\_hot](#input\_custom-logs-apm-error-policy\_max\_primary\_shard\_size\_hot) | n/a | `string` | `"50gb"` | no |
| <a name="input_custom-logs-apm-error-policy_min_age_cold"></a> [custom-logs-apm-error-policy\_min\_age\_cold](#input\_custom-logs-apm-error-policy\_min\_age\_cold) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-logs-apm-error-policy_min_age_delete"></a> [custom-logs-apm-error-policy\_min\_age\_delete](#input\_custom-logs-apm-error-policy\_min\_age\_delete) | n/a | `string` | `"7d"` | no |
| <a name="input_custom-logs-apm-error-policy_searchable_snapshot_cold"></a> [custom-logs-apm-error-policy\_searchable\_snapshot\_cold](#input\_custom-logs-apm-error-policy\_searchable\_snapshot\_cold) | n/a | `string` | `"azure_new"` | no |
| <a name="input_custom-metrics-apm-app-policy_max_age_hot"></a> [custom-metrics-apm-app-policy\_max\_age\_hot](#input\_custom-metrics-apm-app-policy\_max\_age\_hot) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-metrics-apm-app-policy_max_primary_shard_size_hot"></a> [custom-metrics-apm-app-policy\_max\_primary\_shard\_size\_hot](#input\_custom-metrics-apm-app-policy\_max\_primary\_shard\_size\_hot) | n/a | `string` | `"50gb"` | no |
| <a name="input_custom-metrics-apm-app-policy_min_age_cold"></a> [custom-metrics-apm-app-policy\_min\_age\_cold](#input\_custom-metrics-apm-app-policy\_min\_age\_cold) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-metrics-apm-app-policy_min_age_delete"></a> [custom-metrics-apm-app-policy\_min\_age\_delete](#input\_custom-metrics-apm-app-policy\_min\_age\_delete) | n/a | `string` | `"7d"` | no |
| <a name="input_custom-metrics-apm-app-policy_searchable_snapshot_cold"></a> [custom-metrics-apm-app-policy\_searchable\_snapshot\_cold](#input\_custom-metrics-apm-app-policy\_searchable\_snapshot\_cold) | n/a | `string` | `"azure_new"` | no |
| <a name="input_custom-metrics-apm-internal-policy_max_age_hot"></a> [custom-metrics-apm-internal-policy\_max\_age\_hot](#input\_custom-metrics-apm-internal-policy\_max\_age\_hot) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-metrics-apm-internal-policy_max_primary_shard_size_hot"></a> [custom-metrics-apm-internal-policy\_max\_primary\_shard\_size\_hot](#input\_custom-metrics-apm-internal-policy\_max\_primary\_shard\_size\_hot) | n/a | `string` | `"50gb"` | no |
| <a name="input_custom-metrics-apm-internal-policy_min_age_cold"></a> [custom-metrics-apm-internal-policy\_min\_age\_cold](#input\_custom-metrics-apm-internal-policy\_min\_age\_cold) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-metrics-apm-internal-policy_min_age_delete"></a> [custom-metrics-apm-internal-policy\_min\_age\_delete](#input\_custom-metrics-apm-internal-policy\_min\_age\_delete) | n/a | `string` | `"7d"` | no |
| <a name="input_custom-metrics-apm-internal-policy_searchable_snapshot_cold"></a> [custom-metrics-apm-internal-policy\_searchable\_snapshot\_cold](#input\_custom-metrics-apm-internal-policy\_searchable\_snapshot\_cold) | n/a | `string` | `"azure_new"` | no |
| <a name="input_custom-traces-apm-policy_max_age_hot"></a> [custom-traces-apm-policy\_max\_age\_hot](#input\_custom-traces-apm-policy\_max\_age\_hot) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-traces-apm-policy_max_primary_shard_size_hot"></a> [custom-traces-apm-policy\_max\_primary\_shard\_size\_hot](#input\_custom-traces-apm-policy\_max\_primary\_shard\_size\_hot) | n/a | `string` | `"50gb"` | no |
| <a name="input_custom-traces-apm-policy_min_age_cold"></a> [custom-traces-apm-policy\_min\_age\_cold](#input\_custom-traces-apm-policy\_min\_age\_cold) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-traces-apm-policy_min_age_delete"></a> [custom-traces-apm-policy\_min\_age\_delete](#input\_custom-traces-apm-policy\_min\_age\_delete) | n/a | `string` | `"7d"` | no |
| <a name="input_custom-traces-apm-policy_searchable_snapshot_cold"></a> [custom-traces-apm-policy\_searchable\_snapshot\_cold](#input\_custom-traces-apm-policy\_searchable\_snapshot\_cold) | n/a | `string` | `"azure_new"` | no |
| <a name="input_custom-traces-apm-rum-policy_max_age_hot"></a> [custom-traces-apm-rum-policy\_max\_age\_hot](#input\_custom-traces-apm-rum-policy\_max\_age\_hot) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-traces-apm-rum-policy_max_primary_shard_size_hot"></a> [custom-traces-apm-rum-policy\_max\_primary\_shard\_size\_hot](#input\_custom-traces-apm-rum-policy\_max\_primary\_shard\_size\_hot) | n/a | `string` | `"50gb"` | no |
| <a name="input_custom-traces-apm-rum-policy_min_age_cold"></a> [custom-traces-apm-rum-policy\_min\_age\_cold](#input\_custom-traces-apm-rum-policy\_min\_age\_cold) | n/a | `string` | `"2d"` | no |
| <a name="input_custom-traces-apm-rum-policy_min_age_delete"></a> [custom-traces-apm-rum-policy\_min\_age\_delete](#input\_custom-traces-apm-rum-policy\_min\_age\_delete) | n/a | `string` | `"7d"` | no |
| <a name="input_custom-traces-apm-rum-policy_searchable_snapshot_cold"></a> [custom-traces-apm-rum-policy\_searchable\_snapshot\_cold](#input\_custom-traces-apm-rum-policy\_searchable\_snapshot\_cold) | n/a | `string` | `"azure_new"` | no |


### Example Input Configuration

To use this module with custom inputs, you can create a `terraform.tfvars` file:

```hcl
apm_enabled = "true"
```

## Module Outputs

No outputs.

## Best Practices

- update the ilm policy to fit your needs depending on what tiers you are using.