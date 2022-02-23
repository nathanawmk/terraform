resource "aws_instance" "foo" {
  count = "2"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "c012fd93-0ffe-42ee-b4b2-96dd962d03ab"
  }
}

resource "aws_instance" "bar" {
  count = "2"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "c74b3f07-0d83-49d3-8aad-2c93386cd6ba"
  }
}

output "out" {
  value = "${aws_instance.foo.0.id}"
}
