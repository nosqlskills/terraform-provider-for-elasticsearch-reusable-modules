variable "apm_enabled" {
  type    = bool
  default = false
}

variable "custom-traces-apm-policy_max_age_hot" {
  type    = string
  default = "2d"
}

variable "custom-traces-apm-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
}

variable "custom-traces-apm-policy_min_age_cold" {
  type    = string
  default = "2d"
}

variable "custom-traces-apm-policy_min_age_delete" {
  type    = string
  default = "7d"
}

variable "custom-traces-apm-rum-policy_max_age_hot" {
  type    = string
  default = "2d"
}

variable "custom-traces-apm-rum-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
}

variable "custom-traces-apm-rum-policy_min_age_cold" {
  type    = string
  default = "2d"
}

variable "custom-traces-apm-rum-policy_min_age_delete" {
  type    = string
  default = "7d"
}

variable "custom-metrics-apm-internal-policy_max_age_hot" {
  type    = string
  default = "2d"
}

variable "custom-metrics-apm-internal-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
}

variable "custom-metrics-apm-internal-policy_min_age_cold" {
  type    = string
  default = "2d"
}

variable "custom-metrics-apm-internal-policy_min_age_delete" {
  type    = string
  default = "7d"
}

variable "custom-metrics-apm-app-policy_max_age_hot" {
  type    = string
  default = "2d"
}

variable "custom-metrics-apm-app-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
}

variable "custom-metrics-apm-app-policy_min_age_cold" {
  type    = string
  default = "2d"
}

variable "custom-metrics-apm-app-policy_min_age_delete" {
  type    = string
  default = "7d"
}

variable "custom-logs-apm-error-policy_max_age_hot" {
  type    = string
  default = "2d"
}

variable "custom-logs-apm-error-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
}

variable "custom-logs-apm-error-policy_min_age_cold" {
  type    = string
  default = "2d"
}

variable "custom-logs-apm-error-policy_min_age_delete" {
  type    = string
  default = "7d"
}

variable "custom-logs-apm-app-policy_max_age_hot" {
  type    = string
  default = "2d"
}

variable "custom-logs-apm-app-policy_max_primary_shard_size_hot" {
  type    = string
  default = "50gb"
}

variable "custom-logs-apm-app-policy_min_age_cold" {
  type    = string
  default = "2d"
}

variable "custom-logs-apm-app-policy_min_age_delete" {
  type    = string
  default = "7d"
}

variable "custom-traces-apm-policy_searchable_snapshot_cold" {
  type    = string
  default = "azure_new"
}

variable "custom-traces-apm-rum-policy_searchable_snapshot_cold" {
  type    = string
  default = "azure_new"
}

variable "custom-metrics-apm-internal-policy_searchable_snapshot_cold" {
  type    = string
  default = "azure_new"
}

variable "custom-metrics-apm-app-policy_searchable_snapshot_cold" {
  type    = string
  default = "azure_new"
}

variable "custom-logs-apm-error-policy_searchable_snapshot_cold" {
  type    = string
  default = "azure_new"
}

variable "custom-logs-apm-app-policy_searchable_snapshot_cold" {
  type    = string
  default = "azure_new"
}