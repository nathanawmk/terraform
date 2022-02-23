variable "mod_count_child2" {}

resource "aws_instance" "foo" {
  count = "${var.mod_count_child2}"
  tags = {
    yor_trace = "21bda987-a2bd-43ef-9ca5-1cd0cc86812d"
  }
}
