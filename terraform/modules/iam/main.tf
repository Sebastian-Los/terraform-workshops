resource "google_project_iam_member" "main" {
  member  = var.member
  role    = var.role
}