terraform {
  backend "s3" {
    bucket = "devstate1"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}