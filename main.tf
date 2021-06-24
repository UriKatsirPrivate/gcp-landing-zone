module "folders" {
  source = "./modules/folders/"
  parent = var.parent
  names  = var.folder-names
  # folders = var.folders
}

module "projects" {
  source              = "./modules/projects/"
  folder-id           = lookup(tomap(module.folders.ids), var.folder-name, module.folders.ids_list[0])
  project-id          = random_string.random.result
  project-name        = var.project-name
  project-id-no-vpc   = random_string.random-no-vpc.result
  folder-id-no-vpc    = lookup(tomap(module.folders.ids), var.folder-name-no-vpc, module.folders.ids_list[0])
  project-name-no-vpc = var.project-name-no-vpc
  billing_account     = var.billing_account
}

module "vpc" {
  source                  = "./modules/vpc"
  network_name            = var.network_name
  auto_create_subnetworks = var.auto_create_subnetworks
  routing_mode            = var.routing_mode
  project_id              = module.projects.seed_project_id
  # description             = var.description
}

# module "subnets" {
#   source       = "./modules/subnets"
#   project_id   = "${module.projects.project-no-vpc-project-id}"
#   network_name = "${module.vpc.network_name}"
#   subnets      = var.subnets
# }

module "firewall" {
  source              = "./modules/firewall"
  ssh_source_ranges   = var.ssh_source_ranges
  network             = module.vpc.network_name
  project_id          = module.projects.seed_project_id
  http_source_ranges  = var.http_source_ranges
  https_source_ranges = var.https_source_ranges
}

module "organization-policies" {
  source          = "./modules/OrganizationPolicies/"
  organization-id = var.organization-id
  constraint      = "sql.restrictPublicIp"
}

module "iam-audit-config" {
  source = "./modules/IamAuditConfig/"
  org_id = var.organization-id
}



resource "random_string" "random" {
  length           = 11
  special          = false
  upper            = false
  number           = false
  override_special = "/@£$"
}

resource "random_string" "random-no-vpc" {
  length           = 11
  special          = false
  upper            = false
  number           = false
  override_special = "/@£$"
}
