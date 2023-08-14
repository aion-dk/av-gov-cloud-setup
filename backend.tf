terraform {
  backend "s3" {
    bucket  = "assembly-voting-terraform-state"
    key     = "terraform.tfstate"
    encrypt = true
    region  = "us-gov-west-1"
  }
}
