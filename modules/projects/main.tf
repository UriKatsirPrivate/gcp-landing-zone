# resource "google_project" "project-in-a-folder" {
#   name            = var.project-name
#   project_id      = var.project-id
#   folder_id       = var.folder-id
#   billing_account = var.billing_account
# }

# resource "google_project" "project-no-vpc" {
#   name                = var.project-name-no-vpc
#   project_id          = var.project-id-no-vpc
#   folder_id           = var.folder-id-no-vpc
#   auto_create_network = false
#   billing_account     = var.billing_account
# }

module "seed_project-default-vpc" {
  source                      = "terraform-google-modules/project-factory/google"
  version                     = "~> 10.1.1"
  name                        = var.project-name
  random_project_id           = "true"
  disable_services_on_destroy = false
  folder_id                   = var.folder-id
  org_id                      = var.organization-id
  billing_account             = var.billing_account
  activate_apis               = var.activate_apis
  # labels                      = var.project_labels
}

module "seed_project-custom-vpc" {
  source                      = "terraform-google-modules/project-factory/google"
  version                     = "~> 10.1.1"
  name                        = var.project-name-no-vpc
  random_project_id           = "true"
  disable_services_on_destroy = false
  folder_id                   = var.folder-id-no-vpc
  org_id                      = var.organization-id
  billing_account             = var.billing_account
  activate_apis               = var.activate_apis
  # labels                      = var.project_labels
}