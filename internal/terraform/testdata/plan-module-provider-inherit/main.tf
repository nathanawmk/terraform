module "child" {
  source = "./child"
}

provider "aws" {
  from = "root"
}

resource "aws_instance" "foo" {
  from = "root"
  tags = {
    yor_trace = "7e5985e0-0519-4341-917a-b9b284e3ba91"
  }
}
