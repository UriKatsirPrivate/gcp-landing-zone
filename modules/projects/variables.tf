variable "project_id" {
  description = "The GCP project you want to enable APIs on"
  default     = "landing-zone-demo-false5"
}

variable "enable_apis" {
  description = "Whether to actually enable the APIs. If false, this module is a no-op."
  default     = "true"
}

variable "folder-id" {
  description = "Folder ID to create the project in"
  type        = string
}

variable "folder-id-no-vpc" {
  description = "Folder ID to create the project in"
  type        = string
}

variable "project-id" {
  description = "Project name for the new project"
  type        = string
}

variable "project-id-no-vpc" {
  description = "Project id for the new project without a default vpc"
  type        = string
}

variable "project-name-no-vpc" {
  description = "Project name for the new project without a default vpc"
  type        = string
}

variable "project-name" {
  description = "Project name for the new project without a default vpc"
  type        = string
}

variable "common-folder-id" {
  description = "Folder ID to create the common projects in"
  type        = string
}


# variable "activate_apis" {
#   description = "The list of apis to activate within the project"
#   type        = list(string)
#   default = [
#     "compute.googleapis.com",
#     "storage-component.googleapis.com",
#   ]
# }

variable "activate_apis" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = []
}

variable "disable_services_on_destroy" {
  description = "Whether project services will be disabled when the resources are destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_on_destroy"
  default     = "true"
  type        = string
}

variable "disable_dependent_services" {
  description = "Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed. https://www.terraform.io/docs/providers/google/r/google_project_service.html#disable_dependent_services"
  default     = "true"
  type        = string
}

variable "billing_account" {
  type        = string
  description = "Billing account for the project"
}

variable "organization-id" {
  description = "Organization ID"
  type        = string
}

