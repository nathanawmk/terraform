resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "52c592a1-6a3d-44a1-a2e3-819436bddc12"
  }
}

resource "aws_instance" "bar" {
  foo = ["${aws_instance.foo.*.id}"]
  tags = {
    yor_trace = "baa7e7d7-0f03-405c-b7bd-00669f38e30a"
  }
}
