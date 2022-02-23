variable "num" {
  default = 15
}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "index-${count.index}"
  tags = {
    yor_trace = "ee09216e-473a-4cf3-bd1d-f4ebd39c7061"
  }
}

resource "aws_instance" "baz" {
  count = "${var.num}"
  foo   = "baz-${element(aws_instance.bar.*.foo, count.index)}"
  tags = {
    yor_trace = "e9df9d4b-4f4c-4090-a9c6-3e467c5a3470"
  }
}

output "should-be-11" {
  value = "${element(aws_instance.baz.*.foo, 11)}"
}
