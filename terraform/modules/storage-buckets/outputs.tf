output "storage_bucket_name" {
  value = google_storage_bucket.main.name
}

output "storage_bucket" {
  value = google_storage_bucket.main.self_link
}
