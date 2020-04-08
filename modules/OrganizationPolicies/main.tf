resource "google_organization_policy" "sql-restrictPublicIp" {
  org_id     = var.organization-id
  constraint = "sql.restrictPublicIp"

  boolean_policy {
    enforced = true
  }
}
