provider "google" {
  project = local.project
  version = "~> 2.20.0"
  region  = local.region
  zone    = local.zone
}
