variable "var" {}

resource "aws_instance" "foo" {
  value = "${var.var}"
  tags = {
    yor_trace = "c0a3dd4e-3272-400b-8825-f891af94caa0"
  }
}
