resource "aws_instance" "foo" {
  count = 5
  foo   = "foo"
  tags = {
    yor_trace = "4d96aca6-fba5-48fb-a769-d7b5f94f8331"
  }
}

resource "aws_instance" "bar" {
  foo = "${join(",", aws_instance.foo.*.foo)}"
  tags = {
    yor_trace = "ab994698-1e87-48da-9c67-efbe4e2f3233"
  }
}
