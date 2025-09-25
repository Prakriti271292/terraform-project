resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-chochu"

  tags = {
    Name        = "My bucket"
      }
}

terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket-chochu"
    key = "infra/terraform-tfstate"
    region = "us-east-1"
    encrypt = true
    }
}
