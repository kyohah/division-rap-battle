resource "aws_s3_bucket" "bucket" {
  bucket = "division-rap-battle"
  acl    = "private"

  versioning {
    enabled = false
  }

  tags {
    Name = "division-rap-battle"
  }
}
