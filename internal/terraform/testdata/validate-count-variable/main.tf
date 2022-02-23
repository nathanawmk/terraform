variable "foo" {}

resource "aws_instance" "foo" {
  foo   = "foo"
  count = "${var.foo}"
  tags = {
    yor_trace = "8502a249-9ed2-4dd3-af20-95723af4b68d"
  }
}
