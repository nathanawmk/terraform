variable "foo" {}

module "child" {
  input  = "${var.foo}"
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "2"
  tags = {
    yor_trace = "4d7dee07-5130-4396-8220-8cf523e732d6"
  }
}
