# output "folder" {
#   description = "Folder resource (for single use)."
#   value       = "${module.folders.folder}"
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
  value       = "${module.folders.folders}"
}

output "ids" {
  description = "Folder ids."
  value       = "${module.folders.ids}"
}

output "names" {
  description = "Folder names."
  value       = "${module.folders.names}"
}

output "ids_list" {
  description = "List of folder ids."
  value       = module.folders.folders[*].name
}

output "names_list" {
  description = "List of folder names."
  value       = "${module.folders.names_list}"
}
