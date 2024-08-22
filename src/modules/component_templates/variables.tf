variable "apm_enabled" {
  type    = bool
  default = false
  description = "Set this to true if you are deploying to a cluster that has apm enabled. This will deploy the @custom component templates and ilm policies."
}

variable "logs-apm-app-custom_shards" {
  type    = string
  default = "3"
  description = "How many shards this index will need."
}

variable "logs-apm-error-custom_shards" {
  type    = string
  default = "3"
  description = "How many shards this index will need."
}

variable "metrics-apm-app-custom_shards" {
  type    = string
  default = "3"
  description = "How many shards this index will need."
}

variable "metrics-apm-internal-custom_shards" {
  type    = string
  default = "3"
  description = "How many shards this index will need."
}

variable "traces-apm-rum-custom_shards" {
  type    = string
  default = "3"
  description = "How many shards this index will need."
}

variable "traces-apm-custom_shards" {
  type    = string
  default = "3"
  description = "How many shards this index will need."
}

variable "traces-apm-custom_refresh_interval" {
  type    = string
  default = "30s"
  description = "Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1."
}

variable "traces-apm-rum-custom_refresh_interval" {
  type    = string
  default = "30s"
  description = "Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1."
}

variable "metrics-apm-internal-custom_refresh_interval" {
  type    = string
  default = "30s"
  description = "Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1."
}

variable "metrics-apm-app-custom_refresh_interval" {
  type    = string
  default = "30s"
  description = "Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1."
}

variable "logs-apm-error-custom_refresh_interval" {
  type    = string
  default = "30s"
  description = "Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1."
}

variable "logs-apm-app-custom_refresh_interval" {
  type    = string
  default = "30s"
  description = "Set this higher if you want to help with indexing speed and don't mind lag in Kibana. Reduce if you want the opposite. Elasticsearch default is 1."
}

variable "traces-apm-custom_replicas" {
  type    = string
  default = "1"
  description = "How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data."
}

variable "traces-apm-rum-custom_replicas" {
  type    = string
  default = "1"
  description = "How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data."
}

variable "metrics-apm-internal-custom_replicas" {
  type    = string
  default = "1"
  description = "How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data."
}

variable "metrics-apm-app-custom_replicas" {
  type    = string
  default = "1"
  description = "How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data."
}

variable "logs-apm-error-custom_replicas" {
  type    = string
  default = "1"
  description = "How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data."
}

variable "logs-apm-app-custom_replicas" {
  type    = string
  default = "1"
  description = "How many replicas you want for this index. Increase for higher search throughput at the risk of indexing overhead. Set to 0 if you don't mind losing data."
}