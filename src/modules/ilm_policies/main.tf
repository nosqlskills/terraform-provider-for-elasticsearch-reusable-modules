#custom-traces-apm-policy
resource "elasticstack_elasticsearch_index_lifecycle" "custom-traces-apm-policy" {
  count = var.apm_enabled ? 1 : 0
  name  = "custom-traces-apm-policy"

  hot {
    set_priority {
      priority = 100
    }
    rollover {
      max_age                = var.custom-traces-apm-policy_max_age_hot
      max_primary_shard_size = var.custom-traces-apm-policy_max_primary_shard_size_hot
    }
  }

  cold {
    min_age = var.custom-traces-apm-policy_min_age_cold
    set_priority {
      priority = 0
    }
    readonly {}
    freeze {}
  }

  delete {
    min_age = var.custom-traces-apm-policy_min_age_delete
    delete {}
  }
}

#custom-traces-apm-rum-policy
resource "elasticstack_elasticsearch_index_lifecycle" "custom-traces-apm-rum-policy" {
  count = var.apm_enabled ? 1 : 0
  name  = "custom-traces-apm-rum-policy"

  hot {
    set_priority {
      priority = 100
    }
    rollover {
      max_age                = var.custom-traces-apm-rum-policy_max_age_hot
      max_primary_shard_size = var.custom-traces-apm-rum-policy_max_primary_shard_size_hot
    }
  }

  cold {
    min_age = var.custom-traces-apm-rum-policy_min_age_cold
    set_priority {
      priority = 0
    }
    readonly {}
    freeze {}
  }

  delete {
    min_age = var.custom-traces-apm-rum-policy_min_age_delete
    delete {}
  }
}

#custom-metrics-apm-internal-policy
resource "elasticstack_elasticsearch_index_lifecycle" "custom-metrics-apm-internal-policy" {
  count = var.apm_enabled ? 1 : 0
  name  = "custom-metrics-apm-internal-policy"

  hot {
    set_priority {
      priority = 100
    }
    rollover {
      max_age                = var.custom-metrics-apm-internal-policy_max_age_hot
      max_primary_shard_size = var.custom-metrics-apm-internal-policy_max_primary_shard_size_hot
    }
  }

  cold {
    min_age = var.custom-metrics-apm-internal-policy_min_age_cold
    set_priority {
      priority = 0
    }
    readonly {}
    freeze {}
  }

  delete {
    min_age = var.custom-metrics-apm-internal-policy_min_age_delete
    delete {}
  }
}

#custom-metrics-apm-app-policy
resource "elasticstack_elasticsearch_index_lifecycle" "custom-metrics-apm-app-policy" {
  count = var.apm_enabled ? 1 : 0
  name  = "custom-metrics-apm-app-policy"

  hot {
    set_priority {
      priority = 100
    }
    rollover {
      max_age                = var.custom-metrics-apm-app-policy_max_age_hot
      max_primary_shard_size = var.custom-metrics-apm-app-policy_max_primary_shard_size_hot
    }
  }

  cold {
    min_age = var.custom-metrics-apm-app-policy_min_age_cold
    set_priority {
      priority = 0
    }
    readonly {}
    freeze {}
  }

  delete {
    min_age = var.custom-metrics-apm-app-policy_min_age_delete
    delete {}
  }
}

#custom-logs-apm-error-policy
resource "elasticstack_elasticsearch_index_lifecycle" "custom-logs-apm-error-policy" {
  count = var.apm_enabled ? 1 : 0
  name  = "custom-logs-apm-error-policy"

  hot {
    set_priority {
      priority = 100
    }
    rollover {
      max_age                = var.custom-logs-apm-error-policy_max_age_hot
      max_primary_shard_size = var.custom-logs-apm-error-policy_max_primary_shard_size_hot
    }
  }

  cold {
    min_age = var.custom-logs-apm-error-policy_min_age_cold
    set_priority {
      priority = 0
    }
    readonly {}
    freeze {}
  }

  delete {
    min_age = var.custom-logs-apm-error-policy_min_age_delete
    delete {}
  }
}

#custom-logs-apm-app-policy
resource "elasticstack_elasticsearch_index_lifecycle" "custom-logs-apm-app-policy" {
  count = var.apm_enabled ? 1 : 0
  name  = "custom-logs-apm-app-policy"

  hot {
    set_priority {
      priority = 100
    }
    rollover {
      max_age                = var.custom-logs-apm-app-policy_max_age_hot
      max_primary_shard_size = var.custom-logs-apm-app-policy_max_primary_shard_size_hot
    }
  }

  cold {
    min_age = var.custom-logs-apm-app-policy_min_age_cold
    set_priority {
      priority = 0
    }
    readonly {}
    freeze {}
  }

  delete {
    min_age = var.custom-logs-apm-app-policy_min_age_delete
    delete {}
  }
}