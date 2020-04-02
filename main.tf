module "folders" {
  source = "./modules/folders/"
  # project_id      = var.project_id
  parent = var.parent
  names  = var.names
}

module "projects" {
  source            = "./modules/projects/"
  folder-id         = "${module.folders.id}"
  project-id        = "${random_string.random.result}"
  project-id-no-vpc = "${random_string.random-no-vpc.result}"
}

module "vpc" {
  source                  = "./modules/vpc"
  network_name            = var.network_name
  auto_create_subnetworks = var.auto_create_subnetworks
  routing_mode            = var.routing_mode
  project_id              = "${module.projects.project-no-vpc-project-id}"
  description             = var.description
}

module "subnets" {
  source       = "./modules/subnets"
  project_id   = "${module.projects.project-no-vpc-project-id}"
  network_name = "${module.vpc.network_name}"
  subnets      = var.subnets
  # secondary_ranges = var.secondary_ranges
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
