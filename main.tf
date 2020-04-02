module "folders" {
  source = "./modules/folders/"
  # project_id      = var.project_id
  parent = var.parent
  names  = var.names
}

module "projects" {
  source            = "./modules/projects/"
  folder-id         = "${module.folders.id}"
  project-name      = "${random_string.random.result}"
  project-id-no-vpc = "${random_string.random-no-vpc.result}"
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
