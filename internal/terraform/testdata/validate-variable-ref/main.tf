variable "foo" {}

resource "aws_instance" "bar" {
  foo = "${var.foo}"
  tags = {
    yor_trace = "1fe675de-f39e-4cd0-b62c-efb3c284d5e3"
  }
}
