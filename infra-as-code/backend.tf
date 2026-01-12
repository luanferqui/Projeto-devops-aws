# state.tf
terraform {
  backend "s3" {
    bucket  = "terraform-state-luanferqui"
    key     = "site/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}
