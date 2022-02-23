resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    yor_trace = "e6dcc50b-cbcb-4544-b25c-ed34b04b0de5"
  }
}

output "value" {
  value = "${aws_instance.foo.id}"
}
