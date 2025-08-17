terraform apply --auto-approve -var-file="dev.tfvars"
terraform destroy --auto-approve -var-file="dev.tfvars"


terraform apply --auto-approve -var-file="test.tfvars"
terraform destroy --auto-approve -var-file="test.tfvars"