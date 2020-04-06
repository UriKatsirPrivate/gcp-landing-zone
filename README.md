# gcp-landing-zone
A solution that helps customers quickly set up a secure, multi-project GCP environment based on GCP best practices.
Inspired by [terraform-google-bootstrap](https://github.com/terraform-google-modules/terraform-google-bootstrap), [terraform-google-folders](https://github.com/terraform-google-modules/terraform-google-folders) and [terraform-google-project-factory](https://github.com/terraform-google-modules/terraform-google-project-factory).

## What will be created?
Using the default values, the following will be created:
1) Three folders. (development, test and production).
2) Two projects. One with default VPC and one with a custom VPC. <br/>
    2.1) You can set under which folder each project will be created by setting the 'folder-name' and 'folder-name-no-vpc' values.
3) Three firewall rules for the project with the custom VPC to allow ssh, http and https traffic.

## Prerequisites
1) GCP account.
2) [Organization configured](https://cloud.google.com/resource-manager/docs/creating-managing-organization).
3) [Billing Account](https://cloud.google.com/billing/docs/how-to/manage-billing-account).
4) Service account with the following roles.
<!-- 4) Cloud Resource Manager API is activated (https://console.developers.google.com/apis/api/cloudresourcemanager.googleapis.com/overview?project=<Project ID>) -->

## Usage
1. [Configure GCP provider](https://learn.hashicorp.com/terraform/gcp/build#configuration). <br/>
    1.1 See [connections.tf](https://github.com/UriKatsirPrivate/gcp-landing-zone/blob/master/connections.tf) for a sample file containing config information for GCP. <br/>
    1.2 You can use the json file downloaded for GCP as is. <br/>
2. Create a terraform.tfvars files with your values. See table below for details. You can see sample values in [terraform.tfvars.sample](https://github.com/UriKatsirPrivate/gcp-landing-zone/blob/master/terraform.tfvars.sample) file.


## Input
| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| folder-names | Folder names the will be created | array | ["development", "test", "production"] | yes |
| parent | The resource name of the parent Folder or Organization. Must be of the form folders/folder_id or organizations/org_id | string | n/a | yes |
| network_name | The name of the VPC to create in the non-default project | string | n/a | yes |
| subnets | The list of subnets being created | list(map(string)) | n/a | yes |
| ssh_source_ranges | The firewall will apply only to traffic that has source IP address in these ranges  | array | ["0.0.0.0/0"] | yes |
| http_source_ranges | The firewall will apply only to traffic that has source IP address in these ranges  | array | ["0.0.0.0/0"] | yes |
| https_source_ranges | The firewall will apply only to traffic that has source IP address in these ranges  | array | ["0.0.0.0/0"] | yes |
| billing_account | Billing account to associate with the projects | string | n/a | yes |
| project-name-no-vpc | Project name for the project without the default VPC | string | No Default VPC | yes |
| project-name | Project name for the project with the default VPC | string | Default VPC | yes |
| folder-name | Folder name for the project with the default VPC | string | development | yes |
| folder-name-no-vpc | Folder name for the project without the default VPC | string | development | yes |


## To-do
1. Explore enabling [security services](https://cloud.google.com/security/products). <br/>
    1.1 The above should be driven by a boolean flag that the user can set.