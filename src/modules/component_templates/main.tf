#traces-apm@custom
resource "elasticstack_elasticsearch_component_template" "traces-apm-custom" {
  count = var.apm_enabled ? 1 : 0
  name  = "traces-apm@custom"

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-traces-apm-policy"
      "number_of_shards" : var.traces-apm-custom_shards
      "refresh_interval" : var.traces-apm-custom_refresh_interval
      "number_of_replicas" : var.traces-apm-custom_replicas
    })
  }
}

#traces-apm.rum@custom
resource "elasticstack_elasticsearch_component_template" "traces-apm-rum-custom" {
  count = var.apm_enabled ? 1 : 0
  name  = "traces-apm.rum@custom"

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-traces-apm-rum-policy"
      "number_of_shards" : var.traces-apm-rum-custom_shards
      "refresh_interval" : var.traces-apm-rum-custom_refresh_interval
      "number_of_replicas" : var.traces-apm-rum-custom_replicas
    })
  }
}

#metrics-apm.internal@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-internal-custom" {
  count = var.apm_enabled ? 1 : 0
  name  = "metrics-apm.internal@custom"

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-internal-policy"
      "number_of_shards" : var.metrics-apm-internal-custom_shards
      "refresh_interval" : var.metrics-apm-internal-custom_refresh_interval
      "number_of_replicas" : var.metrics-apm-internal-custom_replicas
    })
  }
}

#metrics-apm.app@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-app-custom" {
  count = var.apm_enabled ? 1 : 0
  name  = "metrics-apm.app@custom"

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-app-policy"
      "number_of_shards" : var.metrics-apm-app-custom_shards
      "refresh_interval" : var.metrics-apm-app-custom_refresh_interval
      "number_of_replicas" : var.metrics-apm-app-custom_replicas
    })
  }
}

#logs-apm.error@custom
resource "elasticstack_elasticsearch_component_template" "logs-apm-error-custom" {
  count = var.apm_enabled ? 1 : 0
  name  = "logs-apm.error@custom"

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs-apm-error-policy"
      "number_of_shards" : var.logs-apm-error-custom_shards
      "refresh_interval" : var.logs-apm-error-custom_refresh_interval
      "number_of_replicas" : var.logs-apm-error-custom_replicas
    })
  }
}

#logs-apm.app@custom
resource "elasticstack_elasticsearch_component_template" "logs-apm-app-custom" {
  count = var.apm_enabled ? 1 : 0
  name  = "logs-apm.app@custom"

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs-apm-app-policy"
      "number_of_shards" : var.logs-apm-app-custom_shards
      "refresh_interval" : var.logs-apm-app-custom_refresh_interval
      "number_of_replicas" : var.logs-apm-app-custom_replicas
    })
  }
}