variable "apm_enabled" {
  type    = bool
  default = false
}

variable "logs-apm-app-custom_shards" {
  type    = string
  default = "3"
}

variable "logs-apm-error-custom_shards" {
  type    = string
  default = "3"
}

variable "metrics-apm-app-custom_shards" {
  type    = string
  default = "3"
}

variable "metrics-apm-internal-custom_shards" {
  type    = string
  default = "3"
}

variable "traces-apm-rum-custom_shards" {
  type    = string
  default = "3"
}

variable "traces-apm-custom_shards" {
  type    = string
  default = "3"
}

variable "traces-apm-custom_refresh_interval" {
  type    = string
  default = "30s"
}

variable "traces-apm-rum-custom_refresh_interval" {
  type    = string
  default = "30s"
}

variable "metrics-apm-internal-custom_refresh_interval" {
  type    = string
  default = "30s"
}

variable "metrics-apm-app-custom_refresh_interval" {
  type    = string
  default = "30s"
}

variable "logs-apm-error-custom_refresh_interval" {
  type    = string
  default = "30s"
}

variable "logs-apm-app-custom_refresh_interval" {
  type    = string
  default = "30s"
}

variable "traces-apm-custom_replicas" {
  type    = string
  default = "1"
}

variable "traces-apm-rum-custom_replicas" {
  type    = string
  default = "1"
}

variable "metrics-apm-internal-custom_replicas" {
  type    = string
  default = "1"
}

variable "metrics-apm-app-custom_replicas" {
  type    = string
  default = "1"
}

variable "logs-apm-error-custom_replicas" {
  type    = string
  default = "1"
}

variable "logs-apm-app-custom_replicas" {
  type    = string
  default = "1"
}