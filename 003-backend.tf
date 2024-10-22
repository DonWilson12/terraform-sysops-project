terraform {
  backend "s3" {
    bucket = "myproject-terra-state"
    key = "terraform/backend"
    region = "ap-northeast-2"
  }
}
