#terraform init
#terraform plan
#terraform apply
#terraform destroy

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "vlima"
  region  = "us-west-1"
}

resource "aws_s3_bucket" "infnet-devops-s3-bucket" {
  bucket = "infnet-devops-s3-bucket"
  acl    = "public-read"
  acceleration_status = "Enabled"
  versioning {
    enabled = false #is useful in production versioning the files
  }
  lifecycle_rule {
    id      = "id"
    enabled = true
    expiration {
      days = 365
    }
  }
  tags = {
    Name = "infnet-devops-s3-bucket"
  }
}

#add cors to release gitlab send files to s3
resource "aws_s3_bucket_cors_configuration" "infnet-devops-s3-bucket-cors-configuration" {
  bucket = aws_s3_bucket.infnet-devops-s3-bucket.bucket

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["https://gitlab.com"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }

  cors_rule {
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
  }
}


