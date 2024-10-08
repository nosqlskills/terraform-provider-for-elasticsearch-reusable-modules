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

## Outputs

No outputs.
