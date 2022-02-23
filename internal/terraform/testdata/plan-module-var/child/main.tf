resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "598d9968-472c-464e-bd8b-7de9cd46759a"
  }
}

output "num" {
  value = "${aws_instance.foo.num}"
}
