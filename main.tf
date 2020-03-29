module "folders" {
  source = "./modules/folders/"
  # project_id      = var.project_id
  parent = var.parent
  names  = var.names
}
