terraform {
  backend "s3" {
    bucket = "terraform-project-vprofile"
    key    = "terraform/backend"
    region = "eu-west-2"
  }
}
