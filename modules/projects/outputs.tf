# output "default-project-folder" {
#   description = "default-project-folder"
#   value       = google_project.project-in-a-folder.folder_id
# }

# output "project-no-vpc-project-id" {
#   description = "Project ID"
#   value       = google_project.project-no-vpc.project_id
# }

# output "project-no-vpc-project-name" {
#   description = "Project name"
#   value       = google_project.project-no-vpc.name
# }

# # output "no-vpc-project-folder" {
# #   description = "default-project-folder"
# #   value       = google_project.project-no-vpc.folder_id
# # }



# # output "org-id" {
# #   description = "Org ID"
# #   value       = google_project.project-in-a-folder.org_id
# # }

# # output "project-folder-id" {
# #   description = "folder ID"
# #   value       = google_project.project-in-a-folder.folder_id
# # }

# # output "project-auto-create-network" {
# #   description = "folder ID"
# #   value       = google_project.project-in-a-folder.auto_create_network
# # }

output "seed_project_id" {
  description = "Project where service accounts and core APIs will be enabled."
  value       = module.seed_project-default-vpc.project_id
}

output "seed_project_id-no-vpc" {
  description = "Project where service accounts and core APIs will be enabled."
  value       = module.seed_project-custom-vpc.project_id
}

output "seed_project_name" {
  description = "Project where service accounts and core APIs will be enabled."
  value       = module.seed_project-default-vpc.project_name
}

output "seed_project_name-no-vpc" {
  description = "Project where service accounts and core APIs will be enabled."
  value       = module.seed_project-custom-vpc.project_name
}






