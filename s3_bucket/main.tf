resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-bucket-name"

  tags = {
    Name        = "my-bucket-name"
    Environment = "Dev"
  }
}