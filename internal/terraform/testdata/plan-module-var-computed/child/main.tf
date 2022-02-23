resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    yor_trace = "9ec9d6e6-3468-4e51-9bdc-89a9c73329c7"
  }
}

output "num" {
  value = "${aws_instance.foo.foo}"
}
