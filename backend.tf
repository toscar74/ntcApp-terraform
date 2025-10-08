terraform {
  backend "s3" {
    bucket  = "utc-s3bucket-2"
    key     = "terraform/state/terraform.tfstate"
    region  = "us-east-1"
    encrypt = false
  }
}