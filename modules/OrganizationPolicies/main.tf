resource "google_organization_policy" "sql-restrictPublicIp" {
  org_id     = var.organization-id
  constraint = "sql.restrictPublicIp"

  boolean_policy {
    enforced = true
  }
}

resource "google_organization_policy" "compute-disableSerialPortAccess" {
  org_id     = var.organization-id
  constraint = "compute.disableSerialPortAccess"

  boolean_policy {
    enforced = true
  }
}

# resource "google_organization_policy" "services_policy" {
#   org_id     = var.organization-id
#   constraint = "compute.vmExternalIpAccess"

#   list_policy {
#     deny {
#       all = true
#     }
#   }
# }