terraform {
  backend "s3" {
    bucket = "yopappiyo"
    key    = "expense-terraform/prod/state"
    region = "us-east-1"
  }
}
