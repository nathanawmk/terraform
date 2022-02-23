variable "foo" {}

variable "bar" {}

resource "aws_instance" "foo" {
  ami      = "${var.foo}"
  instance = "${var.bar}"

  lifecycle {
    ignore_changes = all
  }
  tags = {
    yor_trace = "7e09a7e2-ad95-41e0-bff2-18bd5b56367c"
  }
}
