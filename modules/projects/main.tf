# resource "google_project" "project-in-a-folder" {
#   name            = "Default Project"
#   project_id      = var.project-id
#   folder_id       = var.folder-id
#   billing_account = "013FD1-9B204A-8B60C7"
# }

resource "google_project" "project-no-vpc" {
  name                = "No Default VPC"
  project_id          = var.project-id-no-vpc
  folder_id           = var.folder-id
  auto_create_network = false
  billing_account     = "013FD1-9B204A-8B60C7"
}

# locals {
#   api_set = var.enable_apis ? toset(var.activate_apis) : []
# }

/******************************************
  APIs configuration
 *****************************************/
# resource "google_project_service" "project_services" {
#   for_each = local.api_set
#   # project                    = "landing-zone-demo-false4"
#   project                    = var.project-id
#   service                    = each.value
#   disable_on_destroy         = var.disable_services_on_destroy
#   disable_dependent_services = var.disable_dependent_services
# }
