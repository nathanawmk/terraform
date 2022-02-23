resource "aws_instance" "foo" {
  tags = {
    yor_trace = "9248a598-9909-426b-b1e4-db1f7acd1bf3"
  }
}

output "id" {
  value = "${aws_instance.foo.id}"
}
