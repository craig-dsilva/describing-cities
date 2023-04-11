resource "aws_s3_bucket" "terraform_state" {
  bucket = "describing-cities-tf-state"
}

resource "aws_s3_bucket_versioning" "state-versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}