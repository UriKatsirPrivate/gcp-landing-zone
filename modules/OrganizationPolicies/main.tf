# resource "google_organization_policy" "compute-disableSerialPortAccess" {
#   org_id     = var.organization-id
#   constraint = "compute.disableSerialPortAccess"

#   boolean_policy {
#     enforced = true
#   }
# }

resource "google_organization_policy" "org-policies" {
  for_each   = toset(var.constraint_names)
  org_id     = var.organization-id
  constraint = each.value

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