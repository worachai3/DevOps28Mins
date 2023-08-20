variable "environment" {
  default = "default"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "my_iam_user" {
  name = "${locaaz.iam_user_extension}_${var.environment}"
}

locals {
  iam_user_extension = "my_iam_user_abc"
}