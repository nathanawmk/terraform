variable "instance_count" {
  default = 3
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  tags = {
    yor_trace = "9b98eabd-d859-4ec7-aa2a-a6f741144d2f"
  }
}
