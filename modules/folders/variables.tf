variable "parent" {
  type = string
}

variable "names" {
  type        = list(string)
  description = "Folder names."
  # default     = ["uri","test"]
}

variable "prefix" {
  type        = string
  description = "Optional prefix to enforce uniqueness of folder names."
  default     = ""
}

variable "folders" {
  type        = list(map(string))
  description = "The list of folders to create"

}
