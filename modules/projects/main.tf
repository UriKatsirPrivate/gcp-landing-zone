# resource "google_project" "project-in-a-folder" {
#   name            = "Default Project"
#   project_id      = var.project-id
#   folder_id       = var.folder-id
#   billing_account = var.billing_account
# }

resource "google_project" "project-no-vpc" {
  name                = "No Default VPC"
  project_id          = var.project-id-no-vpc
  folder_id           = var.folder-id
  auto_create_network = false
  # billing_account     = "013FD1-9B204A-8B60C7"
  billing_account = var.billing_account
}
