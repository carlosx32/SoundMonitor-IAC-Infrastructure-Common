terraform {
  backend "s3" {
    bucket = "terraform-monitor-provide-states-files-663588064491"
    key    = "common.tfstate"
    region = "us-east-1"
  }
}
