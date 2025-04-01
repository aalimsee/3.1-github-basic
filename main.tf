


provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce9-tfstate"
    key    = "aalimsee-ce9-M3.1-github-workflow.tfstate"
    # Replace the value of key to <your>.tfstate, eg. terraform-ex-ec2-<NAME>.tfstate
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "aalimsee-tf-s3bucket"

  tags = {
    Name        = "aaron"
    Environment = "Dev"
  }
}