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

/******************************************
  Project for SCC Notifications
*****************************************/

module "scc_notifications" {
  source            = "terraform-google-modules/project-factory/google"
  version           = "~> 10.1.1"
  random_project_id = "true"
  #  impersonate_service_account = var.terraform_service_account
  #  default_service_account     = "deprivilege"
  name            = "common-scc"
  org_id          = var.organization-id
  billing_account = var.billing_account
  folder_id       = var.common-folder-id
  activate_apis   = ["logging.googleapis.com", "pubsub.googleapis.com", "securitycenter.googleapis.com", "billingbudgets.googleapis.com"]

  labels = {
    environment       = "production"
    application_name  = "org-scc"
    billing_code      = "1234"
    primary_contact   = "example1"
    secondary_contact = "example2"
    business_code     = "abcd"
    env_code          = "p"
  }
}

/******************************************
  Projects for log sinks
*****************************************/

module "org_audit_logs" {
  source            = "terraform-google-modules/project-factory/google"
  version           = "~> 10.1"
  random_project_id = "true"
  name              = "common-logging"
  org_id            = var.organization-id
  billing_account   = var.billing_account
  folder_id         = var.common-folder-id
  activate_apis     = ["logging.googleapis.com", "bigquery.googleapis.com", "billingbudgets.googleapis.com"]

  labels = {
    environment       = "production"
    application_name  = "org-logging"
    billing_code      = "1234"
    primary_contact   = "example1"
    secondary_contact = "example2"
    business_code     = "abcd"
    env_code          = "p"
  }
}