remote_state {
  backend = "s3"
  config = {
    bucket  = "soniya-sharma-terragrunt-state-bucket"
    key     = "vpc/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

terraform {
  source = "./"
}