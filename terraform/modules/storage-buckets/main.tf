variable "project_id" {
  description = "ID of the project."
}

variable "bucket_name" {
  description = "Name of the bucket."
}

resource "google_storage_bucket" "main" {
  name          = "${var.project_id}-${var.bucket_name}"
  location      = "EU"
  force_destroy = false
}
