resource "google_organization_iam_audit_config" "config" {
  provider = google-beta
  org_id   = "910206293951"
  service  = "allServices"
  # audit_log_config {
  #   log_type = "DATA_READ"
  # }
  audit_log_config {
    log_type = "ADMIN_READ"
  }
}