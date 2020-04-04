variable "parent" {
  type        = string
  description = "The resource name of the parent Folder or Organization. Must be of the form folders/folder_id or organizations/org_id"
  default     = "organizations/910206293951"
}

variable "names" {
  type        = list(string)
  description = "Folder names."
  default     = ["development", "test", "production"]
}
variable "prefix" {
  type        = string
  description = "Optional prefix to enforce uniqueness of folder names."
  default     = ""
}
variable "description" {
  type        = string
  description = "An optional description of this resource. The resource must be recreated to modify this field."
  default     = ""
}

variable "routing_mode" {
  type        = string
  default     = "GLOBAL"
  description = "The network routing mode (default 'GLOBAL')"
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
  default     = false
}

variable "network_name" {
  description = "The name of the network being created"
  default     = "new-vpc"
}

variable "subnets" {
  type        = list(map(string))
  description = "The list of subnets being created"
  default = [
    {
      subnet_name   = "subnet-10"
      subnet_ip     = "10.11.10.0/24"
      subnet_region = "europe-west1"
    },
    {
      subnet_name           = "subnet-20"
      subnet_ip             = "10.21.20.0/24"
      subnet_region         = "us-west1"
      subnet_private_access = "true"
      description           = "This subnet has a description"
    },
    {
      subnet_name   = "subnet-30"
      subnet_ip     = "10.31.30.0/24"
      subnet_region = "us-east1"
    }
  ]
}

variable "folders" {
  type        = list(map(string))
  description = "The list of folders to create"
  default = [
    {
      folder_name   = "test11"
      folder_parent = "organizations/910206293951"
    },
    {
      folder_name   = "test22"
      folder_parent = "organizations/910206293951"
    }
  ]
}

variable "ssh_source_ranges" {
  description = "List of IP CIDR ranges for tag-based SSH rule, defaults to 0.0.0.0/0."
  default     = ["0.0.0.0/0"]
}
variable "http_source_ranges" {
  description = "List of IP CIDR ranges for tag-based HTTP rule, defaults to 0.0.0.0/0."
  default     = ["0.0.0.0/0"]
}

variable "https_source_ranges" {
  description = "List of IP CIDR ranges for tag-based HTTPS rule, defaults to 0.0.0.0/0."
  default     = ["0.0.0.0/0"]
}
