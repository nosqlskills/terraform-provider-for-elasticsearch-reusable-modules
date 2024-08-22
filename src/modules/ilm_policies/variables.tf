variable "apm_enabled" {
  type    = bool
  default = false
  description = "Set this to true to get all ilm policies related to apm. Set to true in the component_templates module to get all apm @custom templates these link to."
}

variable "custom-traces-apm-policy_max_age_hot" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-traces-apm-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
  description = "Size in GB per shard after which a write index will roll over."
}

variable "custom-traces-apm-policy_min_age_cold" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-traces-apm-policy_min_age_delete" {
  type    = string
  default = "7d"
  description = "Days after which a write index will roll over."
}

variable "custom-traces-apm-rum-policy_max_age_hot" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-traces-apm-rum-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
  description = "Size in GB per shard after which a write index will roll over."
}

variable "custom-traces-apm-rum-policy_min_age_cold" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-traces-apm-rum-policy_min_age_delete" {
  type    = string
  default = "7d"
  description = "Days after which a write index will roll over."
}

variable "custom-metrics-apm-internal-policy_max_age_hot" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-metrics-apm-internal-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
  description = "Size in GB per shard after which a write index will roll over."
}

variable "custom-metrics-apm-internal-policy_min_age_cold" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-metrics-apm-internal-policy_min_age_delete" {
  type    = string
  default = "7d"
  description = "Days after which a write index will roll over."
}

variable "custom-metrics-apm-app-policy_max_age_hot" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-metrics-apm-app-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
  description = "Size in GB per shard after which a write index will roll over."
}

variable "custom-metrics-apm-app-policy_min_age_cold" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-metrics-apm-app-policy_min_age_delete" {
  type    = string
  default = "7d"
  description = "Days after which a write index will roll over."
}

variable "custom-logs-apm-error-policy_max_age_hot" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-logs-apm-error-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
  description = "Size in GB per shard after which a write index will roll over."
}

variable "custom-logs-apm-error-policy_min_age_cold" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-logs-apm-error-policy_min_age_delete" {
  type    = string
  default = "7d"
  description = "Days after which a write index will roll over."
}

variable "custom-logs-apm-app-policy_max_age_hot" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-logs-apm-app-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
  description = "Size in GB per shard after which a write index will roll over."
}

variable "custom-logs-apm-app-policy_min_age_cold" {
  type    = string
  default = "2d"
  description = "Days after which a write index will roll over."
}

variable "custom-logs-apm-app-policy_min_age_delete" {
  type    = string
  default = "7d"
  description = "Days after which a write index will roll over."
}