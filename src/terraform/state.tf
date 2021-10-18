terraform {
  backend "gcs" {
    bucket  = "terraform-dns-crdant-dev"
    prefix  = "terraform/state"
  }
}
