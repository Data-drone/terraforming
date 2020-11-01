# Terraform AWS

Terraform Code to setup an AWS environment with a bastion host

How to Use:
adjust the example_bastion_tfvars.tfvars


# Commands to use:

```{bash}

# Start the Terraform script
terraform apply --var-file="../secrets/testing.tfvars"

# Kill the setup
terraform destroy --var-file="../secrets/testing.tfvars"


```

# TODOs

ensure that the logic for different types of nodes all work properly