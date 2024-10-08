## Requirements

No requirements.

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
| <a name="input_apm_enabled"></a> [apm\_enabled](#input\_apm\_enabled) | Set this to true to get all ilm policies related to apm. Set to true in the component\_templates module to get all apm @custom templates these link to. | `bool` | `false` | no |
| <a name="input_custom-logs-apm-app-policy_max_age_hot"></a> [custom-logs-apm-app-policy\_max\_age\_hot](#input\_custom-logs-apm-app-policy\_max\_age\_hot) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-logs-apm-app-policy_max_primary_shard_size_hot"></a> [custom-logs-apm-app-policy\_max\_primary\_shard\_size\_hot](#input\_custom-logs-apm-app-policy\_max\_primary\_shard\_size\_hot) | Size in GB per shard after which a write index will roll over. | `string` | `"50gb"` | no |
| <a name="input_custom-logs-apm-app-policy_min_age_cold"></a> [custom-logs-apm-app-policy\_min\_age\_cold](#input\_custom-logs-apm-app-policy\_min\_age\_cold) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-logs-apm-app-policy_min_age_delete"></a> [custom-logs-apm-app-policy\_min\_age\_delete](#input\_custom-logs-apm-app-policy\_min\_age\_delete) | Days after which a write index will roll over. | `string` | `"7d"` | no |
| <a name="input_custom-logs-apm-error-policy_max_age_hot"></a> [custom-logs-apm-error-policy\_max\_age\_hot](#input\_custom-logs-apm-error-policy\_max\_age\_hot) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-logs-apm-error-policy_max_primary_shard_size_hot"></a> [custom-logs-apm-error-policy\_max\_primary\_shard\_size\_hot](#input\_custom-logs-apm-error-policy\_max\_primary\_shard\_size\_hot) | Size in GB per shard after which a write index will roll over. | `string` | `"50gb"` | no |
| <a name="input_custom-logs-apm-error-policy_min_age_cold"></a> [custom-logs-apm-error-policy\_min\_age\_cold](#input\_custom-logs-apm-error-policy\_min\_age\_cold) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-logs-apm-error-policy_min_age_delete"></a> [custom-logs-apm-error-policy\_min\_age\_delete](#input\_custom-logs-apm-error-policy\_min\_age\_delete) | Days after which a write index will roll over. | `string` | `"7d"` | no |
| <a name="input_custom-metrics-apm-app-policy_max_age_hot"></a> [custom-metrics-apm-app-policy\_max\_age\_hot](#input\_custom-metrics-apm-app-policy\_max\_age\_hot) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-metrics-apm-app-policy_max_primary_shard_size_hot"></a> [custom-metrics-apm-app-policy\_max\_primary\_shard\_size\_hot](#input\_custom-metrics-apm-app-policy\_max\_primary\_shard\_size\_hot) | Size in GB per shard after which a write index will roll over. | `string` | `"50gb"` | no |
| <a name="input_custom-metrics-apm-app-policy_min_age_cold"></a> [custom-metrics-apm-app-policy\_min\_age\_cold](#input\_custom-metrics-apm-app-policy\_min\_age\_cold) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-metrics-apm-app-policy_min_age_delete"></a> [custom-metrics-apm-app-policy\_min\_age\_delete](#input\_custom-metrics-apm-app-policy\_min\_age\_delete) | Days after which a write index will roll over. | `string` | `"7d"` | no |
| <a name="input_custom-metrics-apm-internal-policy_max_age_hot"></a> [custom-metrics-apm-internal-policy\_max\_age\_hot](#input\_custom-metrics-apm-internal-policy\_max\_age\_hot) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-metrics-apm-internal-policy_max_primary_shard_size_hot"></a> [custom-metrics-apm-internal-policy\_max\_primary\_shard\_size\_hot](#input\_custom-metrics-apm-internal-policy\_max\_primary\_shard\_size\_hot) | Size in GB per shard after which a write index will roll over. | `string` | `"50gb"` | no |
| <a name="input_custom-metrics-apm-internal-policy_min_age_cold"></a> [custom-metrics-apm-internal-policy\_min\_age\_cold](#input\_custom-metrics-apm-internal-policy\_min\_age\_cold) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-metrics-apm-internal-policy_min_age_delete"></a> [custom-metrics-apm-internal-policy\_min\_age\_delete](#input\_custom-metrics-apm-internal-policy\_min\_age\_delete) | Days after which a write index will roll over. | `string` | `"7d"` | no |
| <a name="input_custom-traces-apm-policy_max_age_hot"></a> [custom-traces-apm-policy\_max\_age\_hot](#input\_custom-traces-apm-policy\_max\_age\_hot) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-traces-apm-policy_max_primary_shard_size_hot"></a> [custom-traces-apm-policy\_max\_primary\_shard\_size\_hot](#input\_custom-traces-apm-policy\_max\_primary\_shard\_size\_hot) | Size in GB per shard after which a write index will roll over. | `string` | `"50gb"` | no |
| <a name="input_custom-traces-apm-policy_min_age_cold"></a> [custom-traces-apm-policy\_min\_age\_cold](#input\_custom-traces-apm-policy\_min\_age\_cold) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-traces-apm-policy_min_age_delete"></a> [custom-traces-apm-policy\_min\_age\_delete](#input\_custom-traces-apm-policy\_min\_age\_delete) | Days after which a write index will roll over. | `string` | `"7d"` | no |
| <a name="input_custom-traces-apm-rum-policy_max_age_hot"></a> [custom-traces-apm-rum-policy\_max\_age\_hot](#input\_custom-traces-apm-rum-policy\_max\_age\_hot) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-traces-apm-rum-policy_max_primary_shard_size_hot"></a> [custom-traces-apm-rum-policy\_max\_primary\_shard\_size\_hot](#input\_custom-traces-apm-rum-policy\_max\_primary\_shard\_size\_hot) | Size in GB per shard after which a write index will roll over. | `string` | `"50gb"` | no |
| <a name="input_custom-traces-apm-rum-policy_min_age_cold"></a> [custom-traces-apm-rum-policy\_min\_age\_cold](#input\_custom-traces-apm-rum-policy\_min\_age\_cold) | Days after which a write index will roll over. | `string` | `"2d"` | no |
| <a name="input_custom-traces-apm-rum-policy_min_age_delete"></a> [custom-traces-apm-rum-policy\_min\_age\_delete](#input\_custom-traces-apm-rum-policy\_min\_age\_delete) | Days after which a write index will roll over. | `string` | `"7d"` | no |

## Outputs

No outputs.
