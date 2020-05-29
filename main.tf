provider "aws" {
  region = var.aws_region
  version = "2.62"
}

terraform {
    experiments =[variable_validation]
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = var.tags
}
