# Empty
provider "aws" {}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "074598e3-32ec-4b35-b30c-05689f95e7bc"
  }
}

module "nested" {
  source = "./submodule"
}
