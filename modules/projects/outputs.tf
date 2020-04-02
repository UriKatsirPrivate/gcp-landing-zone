output "project-name" {
  description = "Project Name"
  value       = google_project.project-in-a-folder.name
}

output "project-id" {
  description = "Project ID"
  value       = google_project.project-in-a-folder.project_id
}

output "org-id" {
  description = "Org ID"
  value       = google_project.project-in-a-folder.org_id
}

output "project-folder-id" {
  description = "folder ID"
  value       = google_project.project-in-a-folder.folder_id
}

output "project-auto-create-network" {
  description = "folder ID"
  value       = google_project.project-in-a-folder.auto_create_network
}

