variable "iam_user_name_prefix" {
  type = string #any, number, string, bool, list, map, set, object, tuple
  default = "my_iam_user"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "my_iam_user" {
  count = 1
  name = "${var.iam_user_name_prefix}_${count.index}"
}