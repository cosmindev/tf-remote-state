# Copyright (c) 2019 Oracle and/or its affiliates,  All rights reserved.

# Read state from another Terraform config’s state
data "terraform_remote_state" "primary" {
  backend = "local"
  config = {
    path = "../primary/terraform.tfstate"
  }
}

output "primary_public_ip" {
  value = data.terraform_remote_state.primary.outputs.public_ip
}