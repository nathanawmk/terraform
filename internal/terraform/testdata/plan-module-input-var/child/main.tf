variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    yor_trace = "d6118a02-44b3-47a2-8a81-14367b94f9a2"
  }
}
