variable "id" {}

resource "aws_instance" "mod" {
  value = "${var.id}"
  tags = {
    yor_trace = "a8e25694-6a75-4b2a-a56c-ce30b5485cf8"
  }
}
