Terraform taint: used to recreate specific objects 
in real time some resource we need to recrete if it will not work properly 
then we can use taint concept

terraform taint aws_instance.four

terraform apply --auto-approve
