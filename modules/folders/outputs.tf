# output "folder" {
#   description = "Folder resource (for single use)."
#   value       = google_folder.folders[0]
# }

# output "id" {
#   description = "Folder id (for single use)."
#   value       = google_folder.folders[0].name
# }

# output "name" {
#   description = "Folder name (for single use)."
#   value       = google_folder.folders[0].display_name
# }

output "folders" {
  description = "Folder resources."
  value       = google_folder.folders
}

output "ids" {
  description = "Folder ids."
  value       = zipmap(var.names, slice(google_folder.folders[*].name, 0, length(var.names)))
}

output "names" {
  description = "Folder names."
  value       = zipmap(var.names, slice(google_folder.folders[*].display_name, 0, length(var.names)))
}

# output "ids_list" {
#   description = "List of folder ids."
#   value       = module.folders.google_folder.folders[*].name
# }

output "names_list" {
  description = "List of folder names."
  value       = google_folder.folders[*].display_name
}
