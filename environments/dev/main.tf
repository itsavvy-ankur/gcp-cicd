terraform {
  backend "gcs" {
    bucket = "cts-c27-affectionate-agnesi-tfst"
    prefix = "environments/dev"
  }
}
provider "google" {
  project = "cts-c27-affectionate-agnesi"
  region  = "europe-west2"
  zone    = "europe-west2-a"
}