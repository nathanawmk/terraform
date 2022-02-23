resource "aws_instance" "foo" {
  count = 1
  foo   = "foo"
  tags = {
    yor_trace = "5eaa3982-a027-4cac-9727-801d2f0cbd1a"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.0.foo}"
  tags = {
    yor_trace = "33ca6393-db3d-480c-be02-bffc6c22c1f7"
  }
}
