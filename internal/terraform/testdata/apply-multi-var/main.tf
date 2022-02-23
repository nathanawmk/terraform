variable "num" {}

resource "aws_instance" "bar" {
  count = "${var.num}"
  foo   = "bar${count.index}"
  tags = {
    yor_trace = "04d2e911-f15b-411a-aa1e-291dccb4d911"
  }
}

output "output" {
  value = "${join(",", aws_instance.bar.*.foo)}"
}
