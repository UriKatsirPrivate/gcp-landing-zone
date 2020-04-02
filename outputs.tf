# output "folders" {
#   description = "Folder resources."
#   value       = "${module.folders.folders}"
# }

# output "folder-ids" {
#   description = "Folder ids."
#   value       = "${module.folders.ids}"
# }

# output "folder-names" {
#   description = "Folder names."
#   value       = "${module.folders.names}"
# }

# output "folders-ids_list" {
#   description = "List of folder ids."
#   value       = module.folders.folders[*].name
# }

# output "folder-names_list" {
#   description = "List of folder names."
#   value       = "${module.folders.names_list}"
# }

# output "project-name" {
#   description = "Project name"
#   value       = "${module.projects.project-name}"
# }

# output "project-id" {
#   description = "Project ID"
#   value       = "${module.projects.project-id}"
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

# output "folder" {
#   description = "Folder ID"
#   value       = "${module.folders.folder}"
# }

# output "folder-id" {
#   description = "Folder ID"
#   value       = "${module.folders.id}"
# }

output "project-id" {
  description = "Project ID"
  value       = "${module.projects.project-no-vpc-project-id}"
}
