variable "num" {
  default = 15
}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "index-${count.index}"
  tags = {
    yor_trace = "9567e239-baf2-4f1c-9183-e3849019966c"
  }
}

output "should-be-11" {
  value = "${element(aws_instance.bar.*.foo, 11)}"
}
