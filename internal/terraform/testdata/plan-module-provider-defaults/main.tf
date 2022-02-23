module "child" {
  source = "./child"
}

provider "aws" {
  from = "root"
}

resource "aws_instance" "foo" {
  from = "root"
  tags = {
    yor_trace = "67ef2158-00f0-4d89-8c96-3c121ff17de3"
  }
}
