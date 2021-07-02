# Init Terraform and providers
terraform init  -upgrade

# Format the tf files
terraform fmt -recursive

# Check the configuration
terraform validate

# Run the 'plan' command and initialize the variables
# terraform plan -var-file="terraform.tfvars"
terraform plan -var-file="terraform.tfvars" -out="tfplan"

# Run the 'apply' command and pass in yes
# echo "yes" | terraform apply -var-file="starter.tfvars" -var-file="./modules/gke/secrets.tfvars"
# echo "yes" | terraform apply -var-file="terraform.tfvars"
terraform apply "tfplan"