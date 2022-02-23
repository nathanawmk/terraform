variable "value" {}

resource "aws_vpc" "bar" {
  value = "${var.value}"
  tags = {
    yor_trace = "8eea63da-1eaf-440b-bfd1-e643de11bcdf"
  }
}
