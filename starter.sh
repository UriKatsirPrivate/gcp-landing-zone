# Init Terraform and providers
terraform init

# Format the tf files
terraform fmt 

# Run the 'plan' command and initialize the variable
terraform plan -var-file="terraform.tfvars"

# Run the 'apply' command and pass in yes
# echo "yes" | terraform apply -var-file="starter.tfvars" -var-file="./modules/gke/secrets.tfvars"
echo "yes" | terraform apply -var-file="terraform.tfvars"