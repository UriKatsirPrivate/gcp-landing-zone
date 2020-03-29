variable "parent" {
  type        = string
  description = "The resource name of the parent Folder or Organization. Must be of the form folders/folder_id or organizations/org_id"
  default     = "organizations/910206293951"
}

variable "names" {
  type        = list(string)
  description = "Folder names."
  default     = ["development", "test","production"]
}
variable "prefix" {
  type        = string
  description = "Optional prefix to enforce uniqueness of folder names."
  default     = ""
}
