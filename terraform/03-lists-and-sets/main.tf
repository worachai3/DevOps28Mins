variable "names" {
  default = ["worachai", "tom", "jerry"]
}

provider "aws" {
  region = "us-east-1"
}
 
resource "aws_iam_user" "my_iam_users" {
  count = length(var.names)
  name = var.names[count.index]
}