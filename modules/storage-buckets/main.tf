resource "google_storage_bucket" "main" {
  project       = var.project_id
  name          = "${var.project_id}-${var.bucket_name}"
  location      = "EU"
  force_destroy = false
}
