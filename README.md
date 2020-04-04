# gcp-landing-zone
 A solution that helps customers more quickly set up a secure, multi-project GCP environment based on CP best practices

# Prerequisites
1) Account created
2) Organization configured
3) project created
4) Cloud Resource Manager API is activated (https://console.developers.google.com/apis/api/cloudresourcemanager.googleapis.com/overview?project=<Project ID>)
5) Bucket to store the terraform state created

# To-do
1. Use variables everywhere possible
2. Use dynamic resource creation (locals + for_each loop)
3. explore enabling [security services](https://cloud.google.com/security/products) <br/>
    3.1 The above should be driven by a boolean flag that the user can set
4. Move default values into a tfvars file    