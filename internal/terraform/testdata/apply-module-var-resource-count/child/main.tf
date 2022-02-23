variable "num" {
}

resource "aws_instance" "foo" {
  count = "${var.num}"
  tags = {
    yor_trace = "9e72c516-c5e2-465b-aa86-75290dc39b12"
  }
}
