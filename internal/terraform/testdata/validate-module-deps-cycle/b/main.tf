variable "input" {}

resource "aws_instance" "b" {
  id = "${var.input}"
  tags = {
    yor_trace = "c398da75-5969-41df-9578-5dce7df0179b"
  }
}
