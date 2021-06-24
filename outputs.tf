output "folder-ids" {
  description = "Folder ids."
  value       = module.folders.ids
}

output "seed-project-name" {
  description = "Initial project name"
  value       = module.projects.seed_project_name
}

# output "default-project-folder" {
#   description = "Project ID"
#   value       = module.projects.default-project-folder
# }

output "seed-project-id" {
  description = "Project ID"
  value       = module.projects.seed_project_id
}

output "no-vpc-project-name" {
  description = "Project ID"
  value       = module.projects.seed_project_name-no-vpc
}

output "no-vpc-project-id" {
  description = "Project ID"
  value       = module.projects.seed_project_id-no-vpc
}

# output "no-vpc-project-folder" {
#   description = "default-project-folder"
#   value       = module.projects.no-vpc-project-folder
# }

# output "project-org-id" {
#   description = "Org ID"
#   value       = "${module.projects.org-id}"
# }

# output "project-folder-id" {
#   description = "Folder ID"
#   value       = "${module.projects.project-folder-id}"
# }

# output "project-auto-create-network" {
#   description = "Folder ID"
#   value       = "${module.projects.project-auto-create-network}"
# }

output "network-name" {
  description = "VPC name"
  value       = module.default-vpc.network_name
}


