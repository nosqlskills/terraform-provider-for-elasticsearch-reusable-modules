variable "watermark_size" {
    description = "Sets the watermark standard. See the mapping for the standardised named values. small_cluster, medium_cluster or large_cluster"
    nullable = false
    default = "medium_cluster"
}

variable "watermark_flood_mapping" {
    description = "Mapping of watermark levels for this watermark"
    nullable = false
    default = {
        "large_cluster" = "98%",
        "medium_cluster" = "96%",
        "small_cluster" = "94%"
    }
}

variable "watermark_high_mapping" {
    description = "Mapping of watermark levels for this watermark"
    nullable = false
    default = {
        "large_cluster" = "94%",
        "medium_cluster" = "92%",
        "small_cluster" = "90%"
    }
}

variable "watermark_low_mapping" {
    description = "Mapping of watermark levels for this watermark"
    nullable = false
    default = {
        "large_cluster" = "90%",
        "medium_cluster" = "88%",
        "small_cluster" = "86%"
    }
}

variable "cluster_routing_allocation_balance_index" {
    description = "How evenly to balance shards of an index across all nodes"
    nullable = false
    default = "0.85f"
}

variable "cluster_routing_allocation_balance_shard" {
    description = "How evenly to distributes all shards across all nodes"
    nullable = false
    default = "0.85f"
}


variable "cluster_routing_allocation_awareness_attributes" {
    description = "What attributes to use to tell shards how to balance"
    nullable = false
    type = string
    default = "k8s_node_name"
}

variable "cluster_routing_allocation_enable" {
    description = "What allocation options to use"
    nullable = false
    type = string
    default = "all"
}

variable "auto_create_index" {
    description = "Whether or not a PUT request can automatically create an index"
    type = string
    nullable = false
    default = "false"
}