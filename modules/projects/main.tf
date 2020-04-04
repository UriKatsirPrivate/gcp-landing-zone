# resource "google_project" "project-in-a-folder" {
#   name            = "Default Project"
#   project_id      = var.project-id
#   folder_id       = var.folder-id
#   billing_account = var.billing_account
# }

resource "google_project" "project-no-vpc" {
  name                = var.project-name-no-vpc
  project_id          = var.project-id-no-vpc
  folder_id           = var.folder-id-no-vpc
  auto_create_network = false
  billing_account = var.billing_account
}
