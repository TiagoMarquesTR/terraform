variable "amis" {
  type = "map"

  default = {
    "us-east-1" = "ami-04b9e92b5572fa0d1"
  }
}

variable "cdirs_remote_acess" {
  type = "list"
  default = ["159.220.58.3/32"]
}

variable "key_name" {
  default = "terraform-aws"
}
