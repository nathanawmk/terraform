variable "input" {}

resource "aws_instance" "foo" {
  foo = "${var.input}"
  tags = {
    yor_trace = "134f5300-f80a-4b05-8fc4-6d5357874758"
  }
}
