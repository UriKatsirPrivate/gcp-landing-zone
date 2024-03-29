/******************************************
  Folder Creation
******************************************/
common-folder-names = ["development", "non-production", "production"]

# The resource name of the parent Folder or Organization.
# Must be of the form folders/folder_id or organizations/org_id
parent = "organizations/993103645203" # Replace with your Organization ID

/******************************************
  VPC settings
******************************************/

# The name of the vpc to create
network_name = "new-vpc"

# The list of subnets being created
subnets = [
  {
    subnet_name   = "subnet-10"
    subnet_ip     = "10.12.10.0/24"
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

# Firewall rules
ssh_source_ranges   = ["0.0.0.0/0"]
http_source_ranges  = ["0.0.0.0/0"]
https_source_ranges = ["0.0.0.0/0"]

/******************************************
  Project settings
******************************************/
billing_account     = "013950-3F911C-300B7F" # Replace with your billing account
project-name-no-vpc = "custom-vpc"
project-name        = "default-vpc"

/* Folder name to create the projects in.
The value should match one of the folder names specified above (folder-names variable)
If no match found, project will be assigned a default folder*/

folder-name        = "development"
folder-name-no-vpc = "production"

organization-id = "993103645203" # Replace with your Organization ID

//Organization policies that will be enabled. Full list is here: https://cloud.google.com/resource-manager/docs/organization-policy/org-policy-constraints
constraint_names = [
  # "iam.disableServiceAccountCreation",
  "iam.disableServiceAccountKeyUpload",
  "compute.disableSerialPortAccess",
  "sql.restrictPublicIp",
  "storage.uniformBucketLevelAccess"
]

activate_apis = [
  "serviceusage.googleapis.com",
  "servicenetworking.googleapis.com",
  "compute.googleapis.com",
  "logging.googleapis.com",
  "bigquery.googleapis.com",
  "cloudresourcemanager.googleapis.com",
  "cloudbilling.googleapis.com",
  "iam.googleapis.com",
  "admin.googleapis.com",
  "appengine.googleapis.com",
  "storage-api.googleapis.com",
  "monitoring.googleapis.com",
  "sql-component.googleapis.com",
  "essentialcontacts.googleapis.com",
  "cloudasset.googleapis.com"
]
