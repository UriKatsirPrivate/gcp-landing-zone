# Run the 'destroy' command and pass in yes
# echo "yes" | terraform destroy -var-file="terraform.tfvars"
terraform plan -destroy -out="destroy-plan" 
terraform apply "destroy-plan"