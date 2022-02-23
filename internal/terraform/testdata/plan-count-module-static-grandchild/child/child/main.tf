variable "value" {}

resource "aws_instance" "foo" {
  count = "${var.value}"
  tags = {
    yor_trace = "375cdcf2-eba3-4ff6-853a-0e4dfbabc26c"
  }
}
