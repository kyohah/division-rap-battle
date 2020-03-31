provider "aws" {
  region                  = "ap-northeast-1"
  shared_credentials_file = "credentials"
  profile                 = "terraform"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket                  = "division-rap-battle-terraform"
    key                     = "state"
    region                  = "ap-northeast-1"
    shared_credentials_file = "credentials"
    profile                 = "terraform"
  }
}

resource "aws_s3_bucket" "terraform" {
  bucket = "division-rap-battle-terraform"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags {
    Name = "terraform"
  }
}