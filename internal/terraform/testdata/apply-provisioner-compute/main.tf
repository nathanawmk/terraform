variable "value" {}

resource "aws_instance" "foo" {
  num           = "2"
  compute       = "value"
  compute_value = "${var.value}"
  tags = {
    yor_trace = "fbb2a98d-691b-4115-b53c-cd1966c6f2d7"
  }
}

resource "aws_instance" "bar" {
  provisioner "shell" {
    command = "${aws_instance.foo.value}"
  }
  tags = {
    yor_trace = "470a903f-672c-407f-9387-6c6ed6be2a05"
  }
}
