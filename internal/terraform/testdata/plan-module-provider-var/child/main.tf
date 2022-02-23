variable "foo" {}

provider "aws" {
  value = "${var.foo}"
}

resource "aws_instance" "test" {
  value = "hello"
  tags = {
    yor_trace = "fb754db8-176e-4794-988f-019c39af2b9c"
  }
}
