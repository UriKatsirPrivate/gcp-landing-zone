/******************************************
  Folder Creation
******************************************/
folder-names = ["development", "test", "production"]

# The resource name of the parent Folder or Organization.
# Must be of the form folders/folder_id or organizations/org_id
parent = "organizations/910206293951"

/******************************************
  VPC settings
******************************************/

# When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range.
# When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources.
auto_create_subnetworks = false

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


