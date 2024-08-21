# This is a requirement even when set on the calling terraform side. 
terraform {
  required_providers {
    elasticstack = {
      source  = "elastic/elasticstack"
    }
  }
}