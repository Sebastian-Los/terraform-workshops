module "projects_iam_bindings" {
  source = "../../modules/iam"

  member = "serviceAccount:${module.terraform-service-account.google_service_account_email}"
  role   = "roles/editor"
}