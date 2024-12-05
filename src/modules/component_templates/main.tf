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

#metrics-apm.service_destination.1m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-service-destination-1m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.service_destination.1m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-apm.transaction.10m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-transaction-10m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.transaction.10m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-apm.service_destination.60m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-service-destination-60m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.service_destination.60m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}


#metrics-apm.service_summary.1m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-service-summary-1m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.service_summary.1m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-service-summary-1m-metrics-default-policy"
    })
  }
}

#metrics-apm.service_transaction.1m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-service-transaction-1m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.service_transaction.1m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-service-transaction-1m-metrics-default-policy"
    })
  }
}

#metrics-apm.transaction.1m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-transaction-1m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.transaction.1m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-transaction-1m-metrics-default-policy"
    })
  }
}

#metrics-apm.service_destination.10m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-service-destination-10m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.service_destination.10m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-service-destination-10m-metrics-default-policy"
    })
  }
}

#metrics-apm.service_summary.10m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-service-summary-10m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.service_summary.10m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-service-summary-10m-metrics-default-policy"
    })
  }
}

#metrics-apm.service_transaction.10m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-service-transaction-10m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.service_transaction.10m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-service-transaction-10m-metrics-default-policy"
    })
  }
}

#metrics-apm.service_summary.60m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-service-summary-60m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.service_summary.60m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-service-summary-60m-metrics-default-policy"
    })
  }
}

#metrics-apm.service_transaction.60m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-service-transaction-60m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.service_transaction.60m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-service-transaction-60m-metrics-default-policy"
    })
  }
}

#metrics-apm.transaction.60m@custom
resource "elasticstack_elasticsearch_component_template" "metrics-apm-transaction-60m" {
  count = var.apm_enabled ? 1 : 0
  name = "metrics-apm.transaction.60m@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "apm"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics-apm-transaction-60m-metrics-default-policy"
    })
  }
}

#logs-elastic_agent.cloud_defend@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-cloud-defend" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.cloud_defend@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.metricbeat@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-metricbeat" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.metricbeat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.pf_host_agent@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-pf-host-agent" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.pf_host_agent@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.filebeat_input@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-filebeat-input" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.filebeat_input@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.fleet_server@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-fleet-server" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.fleet_server@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.osquerybeat@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-osquerybeat" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.osquerybeat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.auditbeat@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-auditbeat" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.auditbeat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.pf_elastic_collector@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-pf-elastic-collector" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.pf_elastic_collector@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.cloudbeat@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic_agent-cloudbeat" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.cloudbeat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.apm_server@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-apm-server" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.apm_server@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.filebeat@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-filebeat" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.filebeat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.packetbeat@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-packetbeat" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.packetbeat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.endpoint_security@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-endpoint-security" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.endpoint_security@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.pf_elastic_symbolizer@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-pf-elastic-symbolizer" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.pf_elastic_symbolizer@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent.heartbeat@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent-heartbeat" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent.heartbeat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-elastic_agent@custom
resource "elasticstack_elasticsearch_component_template" "logs-elastic-agent" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "logs-elastic_agent@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#metrics-elastic_agent.metricbeat@custom
resource "elasticstack_elasticsearch_component_template" "metrics-elastic-agent-metricbeat" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "metrics-elastic_agent.metricbeat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-elastic_agent.filebeat@custom
resource "elasticstack_elasticsearch_component_template" "metrics-elastic-agent-filebeat" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "metrics-elastic_agent.filebeat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-elastic_agent.apm_server@custom
resource "elasticstack_elasticsearch_component_template" "metrics-elastic-agent-apm-server" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "metrics-elastic_agent.apm_server@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-elastic_agent.elastic_agent@custom
resource "elasticstack_elasticsearch_component_template" "metrics-elastic-agent-elastic-agent" {
  count = var.elastic_agent_enabled ? 1 : 0
  name = "metrics-elastic_agent.elastic_agent@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "elastic_agent"
    }
    "managed_by" : "fleet"
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#.logs-endpoint.actions@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-actions" {
  count = var.endpoint_enabled ? 1 : 0
  name = ".logs-endpoint.actions@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#.logs-endpoint.action.responses@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-action-responses" {
  count = var.endpoint_enabled ? 1 : 0
  name = ".logs-endpoint.action.responses@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-endpoint.events.security@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-events-security" {
  count = var.endpoint_enabled ? 1 : 0
  name = "logs-endpoint.events.security@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-endpoint.events.registry@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-events-registry" {
  count = var.endpoint_enabled ? 1 : 0
  name = "logs-endpoint.events.registry@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }

    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-endpoint.events.network@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-events-network" {
  count = var.endpoint_enabled ? 1 : 0
  name = "logs-endpoint.events.network@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}


#logs-endpoint.events.process@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-events-process" {
  count = var.endpoint_enabled ? 1 : 0
  name = "logs-endpoint.events.process@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#.logs-endpoint.heartbeat@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-heartbeat" {
  count = var.endpoint_enabled ? 1 : 0
  name = ".logs-endpoint.heartbeat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-endpoint.events.library@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-events-library" {
  count = var.endpoint_enabled ? 1 : 0
  name = "logs-endpoint.events.library@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-endpoint.events.api@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-events-api" {
  count = var.endpoint_enabled ? 1 : 0
  name = "logs-endpoint.events.api@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-endpoint.alerts@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-alerts" {
  count = var.endpoint_enabled ? 1 : 0
  name = "logs-endpoint.alerts@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-endpoint.events.file@custom
resource "elasticstack_elasticsearch_component_template" "logs-endpoint-events-file" {
  count = var.endpoint_enabled ? 1 : 0
  name = "logs-endpoint.events.file@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "endpoint"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-system.system@custom
resource "elasticstack_elasticsearch_component_template" "logs-system-system" {
  count = var.system_enabled ? 1 : 0
  name = "logs-system.system@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-system.application@custom
resource "elasticstack_elasticsearch_component_template" "logs-system-application" {
  count = var.system_enabled ? 1 : 0
  name = "logs-system.application@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-system.security@custom
resource "elasticstack_elasticsearch_component_template" "logs-system-security" {
  count = var.system_enabled ? 1 : 0
  name = "logs-system.security@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-system.auth@custom
resource "elasticstack_elasticsearch_component_template" "logs-system-auth" {
  count = var.system_enabled ? 1 : 0
  name = "logs-system.auth@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#logs-system.syslog@custom
resource "elasticstack_elasticsearch_component_template" "logs-system-syslog" {
  count = var.system_enabled ? 1 : 0
  name = "logs-system.syslog@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}

#metrics-system.process@custom
resource "elasticstack_elasticsearch_component_template" "metrics-system-process" {
  count = var.system_enabled ? 1 : 0
  name = "metrics-system.process@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}


#metrics-system.cpu@custom
resource "elasticstack_elasticsearch_component_template" "metrics-system-cpu" {
  count = var.system_enabled ? 1 : 0
  name = "metrics-system.cpu@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-system.memory@custom
resource "elasticstack_elasticsearch_component_template" "metrics-system-memory" {
  count = var.system_enabled ? 1 : 0
  name = "metrics-system.memory@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-system.load@custom
resource "elasticstack_elasticsearch_component_template" "metrics-system-load" {
  count = var.system_enabled ? 1 : 0
  name = "metrics-system.load@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}


#metrics-system.process.summary@custom
resource "elasticstack_elasticsearch_component_template" "metrics-system-process-summary" {
  count = var.system_enabled ? 1 : 0
  name = "metrics-system.process.summary@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-system.socket_summary@custom
resource "elasticstack_elasticsearch_component_template" "metrics-system-socket-summary" {
  count = var.system_enabled ? 1 : 0
  name = "metrics-system.socket_summary@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-system.uptime@custom
resource "elasticstack_elasticsearch_component_template" "metrics-system-uptime" {
  count = var.system_enabled ? 1 : 0
  name = "metrics-system.uptime@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}


#metrics-system.filesystem@custom
resource "elasticstack_elasticsearch_component_template" "metrics-system-filesystem" {
  count = var.system_enabled ? 1 : 0
  name = "metrics-system.filesystem@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-system.fsstat@custom
resource "elasticstack_elasticsearch_component_template" "metrics-system-fsstat" {
  count = var.system_enabled ? 1 : 0
  name = "metrics-system.fsstat@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-system.network@custom
resource "elasticstack_elasticsearch_component_template" "metrics-system-network" {
  count = var.system_enabled ? 1 : 0
  name = "metrics-system.network@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "system"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#logs-kubernetes.audit_logs@custom
resource "elasticstack_elasticsearch_component_template" "logs-kubernetes-audit-logs" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "logs-kubernetes.audit_logs@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
    })
  }
}


#logs-kubernetes.container_logs@custom
resource "elasticstack_elasticsearch_component_template" "logs-kubernetes-container-logs" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "logs-kubernetes.container_logs@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-logs"
      "number_of_shards": "4"
    })
  }
}


#metrics-kubernetes.apiserver@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-apiserver" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.apiserver@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
      "number_of_shards": "4"
    })
  }
}

#metrics-kubernetes.state_container@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-container" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_container@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
      "number_of_shards": "4"
    })
  }
}

#metrics-kubernetes.state_pod@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-pod" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_pod@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.pod@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-pod" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.pod@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.volume@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-volume" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.volume@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.state_service@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-service" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_service@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.state_daemonset@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-daemonset" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_daemonset@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}


#metrics-kubernetes.event@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-event" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.event@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.state_node@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-node" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_node@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.system@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-system" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.system@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.state_job@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-job" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_job@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}


#metrics-kubernetes.state_statefulset@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-statefulset" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_statefulset@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.state_resourcequota@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-resourcequota" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_resourcequota@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}


#metrics-kubernetes.node@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-node" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.node@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.state_persistentvolume@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-persistentvolume" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_persistentvolume@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.state_persistentvolumeclaim@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-persistentvolumeclaim" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_persistentvolumeclaim@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.state_storageclass@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-storageclass" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_storageclass@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.state_cronjob@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-cronjob" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_cronjob@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.container@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-container" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.container@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
      "number_of_shards": "4"
    })
  }
}

#metrics-kubernetes.state_deployment@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-deployment" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_deployment@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.proxy@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-proxy" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.proxy@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}

#metrics-kubernetes.state_replicaset@custom
resource "elasticstack_elasticsearch_component_template" "metrics-kubernetes-state-replicaset" {
  count = var.kubernetes_enabled ? 1 : 0
  name = "metrics-kubernetes.state_replicaset@custom"

  metadata = jsonencode({
    "package" : {
      "name" : "kubernetes"
    }
    
    "managed" : true
    })

  template {
    settings = jsonencode({
      "lifecycle.name" : "custom-metrics"
    })
  }
}
