# gcp-landing-zone
 A solution that helps customers quickly set up a secure, multi-project GCP environment based on GCP best practices

## Prerequisites
1) Account created
2) Organization configured
3) Service account with the following roles.
<!-- 4) Cloud Resource Manager API is activated (https://console.developers.google.com/apis/api/cloudresourcemanager.googleapis.com/overview?project=<Project ID>) -->

## Usage
1. [Configure GCP providers](https://learn.hashicorp.com/terraform/gcp/build#configuration). <br/>
    1.1 See [connections.tf](https://github.com/UriKatsirPrivate/terraform-lil/blob/master/connections.tf) for a sample file containing config information for GCP. <br/>
    1.2 You can use the json file downloaded for GCP as is. <br/>

## Inputs
Replace the values in terraform.tfvars files with your values. See table below for details

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| parent | The resource name of the parent Folder or Organization. Must be of the form folders/folder_id or organizations/org_id | string | n/a | yes |
| folder-names | Folder names | array | n/a | yes |
| prefix | Optional prefix to enforce uniqueness of folder names. | string | empty | no |
| subnets | The list of subnets being created | list(map(string)) | n/a | yes |
| subnets | The list of subnets being created | list(map(string)) | n/a | yes |



## To-do
1. explore enabling [security services](https://cloud.google.com/security/products) <br/>
    3.1 The above should be driven by a boolean flag that the user can set
2. Move default values into a terraform.tfvars file    