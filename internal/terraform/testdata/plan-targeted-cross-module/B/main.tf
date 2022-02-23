variable "input" {}

resource "aws_instance" "bar" {
  foo = "${var.input}"
  tags = {
    yor_trace = "b388e931-21b0-4daa-9667-50fb11aed885"
  }
}
