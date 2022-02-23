variable "value" {}

resource "aws_instance" "bar" {
  value = "${var.value}"
  tags = {
    yor_trace = "fc76529b-8dd6-4c40-9c5f-87064fe66cc5"
  }
}
