variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    yor_trace = "039478ac-0007-45f0-95ad-e2874dde5f68"
  }
}
