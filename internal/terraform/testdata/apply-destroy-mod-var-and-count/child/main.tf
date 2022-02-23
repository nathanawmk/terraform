variable "mod_count" {}

resource "aws_instance" "foo" {
  count = "${var.mod_count}"
  tags = {
    yor_trace = "3df6bfa3-84a4-4f29-8825-ab39f2efa925"
  }
}
