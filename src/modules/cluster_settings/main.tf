resource "elasticstack_elasticsearch_cluster_settings" "cluster_settings" {

  persistent {

    setting {
      name  = "action.auto_create_index"
      value = var.auto_create_index
    }

    setting {
      name  = "cluster.routing.allocation.enable"
      value = var.cluster_routing_allocation_enable
    }

    setting {
      name  = "cluster.routing.allocation.awareness.attributes"
      value = var.cluster_routing_allocation_awareness_attributes
    }

    setting {
      name  = "cluster.routing.allocation.balance.index"
      value = var.cluster_routing_allocation_balance_index
    }

    setting {
      name  = "cluster.routing.allocation.balance.shard"
      value = var.cluster_routing_allocation_balance_shard
    }

    setting {
      name  = "cluster.routing.allocation.disk.watermark.low"
      value = lookup(var.watermark_low_mapping, var.watermark_size)
    }

    setting {
      name  = "cluster.routing.allocation.disk.watermark.high"
      value = lookup(var.watermark_high_mapping, var.watermark_size)
    }

    setting {
      name  = "cluster.routing.allocation.disk.watermark.flood_stage"
      value = lookup(var.watermark_flood_mapping, var.watermark_size)
    }

  }
}