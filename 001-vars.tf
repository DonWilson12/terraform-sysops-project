variable "EnvType" {
  type    = string
  default = "dev"
}

variable "REGION" {
  type    = string
  default = "ap-northeast-2"
}

variable "ZONE1" {
  type    = string
  default = "ap-northeast-2a"
}

variable "ZONE2" {
  type    = string
  default = "ap-northeast-2b"
}

variable "AMIs" {
  type = map(string)
  default = {
    ap-northeast-1 = "ami-0ac6b9b2908f3e20d"
    ap-northeast-2 = "ami-042e76978adeb8c48"
  }
}

variable "USER" {
  default = "ec2-user"
}

