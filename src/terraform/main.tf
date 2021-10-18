locals {
  dns_name = "crdant.dev."
}

resource "google_dns_managed_zone" "crdant_dev" {
  name        = "crdant-dev"
  dns_name    = local.dns_name
  description = "Domain for development activities" 
  
  dnssec_config {
    state         = "on"
  }
}

