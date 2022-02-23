resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "c71b7263-9566-4159-869c-c8ad242c717e"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    yor_trace = "f737713e-7e3f-44f8-baa7-5d5d72ffb677"
  }
}

output "foo_num" {
  value = "${aws_instance.bar.0.foo}"
}
