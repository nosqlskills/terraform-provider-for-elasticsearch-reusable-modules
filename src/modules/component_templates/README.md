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
| [elasticstack_elasticsearch_component_template.logs-apm-app-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |
| [elasticstack_elasticsearch_component_template.logs-apm-error-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |
| [elasticstack_elasticsearch_component_template.metrics-apm-app-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |
| [elasticstack_elasticsearch_component_template.metrics-apm-internal-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |
| [elasticstack_elasticsearch_component_template.traces-apm-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |
| [elasticstack_elasticsearch_component_template.traces-apm-rum-custom](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs/resources/elasticsearch_component_template) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apm_enabled"></a> [apm\_enabled](#input\_apm\_enabled) | Set this to true if you are deploying to a cluster that has apm enabled. This will deploy the @custom component templates and ilm policies. | `bool` | `false` | no |
| <a name="input_logs-apm-app-custom_refresh_interval"></a> [logs-apm-app-custom\_refresh\_interval](#input\_logs-apm-app-custom\_refresh\_interval) | Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1. | `string` | `"30s"` | no |
| <a name="input_logs-apm-app-custom_replicas"></a> [logs-apm-app-custom\_replicas](#input\_logs-apm-app-custom\_replicas) | How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data. | `string` | `"1"` | no |
| <a name="input_logs-apm-app-custom_shards"></a> [logs-apm-app-custom\_shards](#input\_logs-apm-app-custom\_shards) | How many shards this index will need. | `string` | `"3"` | no |
| <a name="input_logs-apm-error-custom_refresh_interval"></a> [logs-apm-error-custom\_refresh\_interval](#input\_logs-apm-error-custom\_refresh\_interval) | Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1. | `string` | `"30s"` | no |
| <a name="input_logs-apm-error-custom_replicas"></a> [logs-apm-error-custom\_replicas](#input\_logs-apm-error-custom\_replicas) | How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data. | `string` | `"1"` | no |
| <a name="input_logs-apm-error-custom_shards"></a> [logs-apm-error-custom\_shards](#input\_logs-apm-error-custom\_shards) | How many shards this index will need. | `string` | `"3"` | no |
| <a name="input_metrics-apm-app-custom_refresh_interval"></a> [metrics-apm-app-custom\_refresh\_interval](#input\_metrics-apm-app-custom\_refresh\_interval) | Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1. | `string` | `"30s"` | no |
| <a name="input_metrics-apm-app-custom_replicas"></a> [metrics-apm-app-custom\_replicas](#input\_metrics-apm-app-custom\_replicas) | How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data. | `string` | `"1"` | no |
| <a name="input_metrics-apm-app-custom_shards"></a> [metrics-apm-app-custom\_shards](#input\_metrics-apm-app-custom\_shards) | How many shards this index will need. | `string` | `"3"` | no |
| <a name="input_metrics-apm-internal-custom_refresh_interval"></a> [metrics-apm-internal-custom\_refresh\_interval](#input\_metrics-apm-internal-custom\_refresh\_interval) | Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1. | `string` | `"30s"` | no |
| <a name="input_metrics-apm-internal-custom_replicas"></a> [metrics-apm-internal-custom\_replicas](#input\_metrics-apm-internal-custom\_replicas) | How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data. | `string` | `"1"` | no |
| <a name="input_metrics-apm-internal-custom_shards"></a> [metrics-apm-internal-custom\_shards](#input\_metrics-apm-internal-custom\_shards) | How many shards this index will need. | `string` | `"3"` | no |
| <a name="input_traces-apm-custom_refresh_interval"></a> [traces-apm-custom\_refresh\_interval](#input\_traces-apm-custom\_refresh\_interval) | Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1. | `string` | `"30s"` | no |
| <a name="input_traces-apm-custom_replicas"></a> [traces-apm-custom\_replicas](#input\_traces-apm-custom\_replicas) | How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data. | `string` | `"1"` | no |
| <a name="input_traces-apm-custom_shards"></a> [traces-apm-custom\_shards](#input\_traces-apm-custom\_shards) | How many shards this index will need. | `string` | `"3"` | no |
| <a name="input_traces-apm-rum-custom_refresh_interval"></a> [traces-apm-rum-custom\_refresh\_interval](#input\_traces-apm-rum-custom\_refresh\_interval) | Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1. | `string` | `"30s"` | no |
| <a name="input_traces-apm-rum-custom_replicas"></a> [traces-apm-rum-custom\_replicas](#input\_traces-apm-rum-custom\_replicas) | How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data. | `string` | `"1"` | no |
| <a name="input_traces-apm-rum-custom_shards"></a> [traces-apm-rum-custom\_shards](#input\_traces-apm-rum-custom\_shards) | How many shards this index will need. | `string` | `"3"` | no |

## Outputs

No outputs.
