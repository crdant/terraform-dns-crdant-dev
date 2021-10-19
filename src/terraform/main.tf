locals {
  dns_name = "crdant.dev."
}

resource "google_dns_managed_zone" "crdant_dev" {
  name        = "crdant-dev"
  dns_name    = local.dns_name
  description = "Domain for development activities"

  dnssec_config {
    state = "on"
  }
}

resource "google_dns_record_set" "crdant_dev_caa" {
  name         = google_dns_managed_zone.crdant_dev.dns_name
  managed_zone = google_dns_managed_zone.crdant_dev.name
  type         = "CAA"
  ttl          = 300

  rrdatas = [
    "0 issue \"letsencrypt.org\""
  ]
}

