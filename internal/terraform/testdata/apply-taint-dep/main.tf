resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "a131054b-0ba2-4915-87c9-afae76420444"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  foo = "${aws_instance.foo.id}"
  tags = {
    yor_trace = "44ac6b50-14f5-42c0-a044-c310acb27f3b"
  }
}
