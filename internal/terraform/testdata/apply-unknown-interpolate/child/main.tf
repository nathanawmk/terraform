variable "value" {}

resource "aws_instance" "bar" {
  foo = "${var.value}"
  tags = {
    yor_trace = "de635dfe-4a42-4b5c-9a53-f0cb5294e397"
  }
}
