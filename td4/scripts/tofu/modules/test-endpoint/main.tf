terraform {
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "~> 3.0"
    }
  }
}

data "http" "test_endpoint" {
  url = var.endpoint
  
  # Retry logic for more reliable tests
  retry {
    attempts     = 3
    min_delay_ms = 1000
  }
}
