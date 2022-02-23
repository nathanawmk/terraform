resource "aws_instance" "foo" {
  count = 3
  tags = {
    yor_trace = "ad3061a2-7598-49cd-aa4a-9bc29816d90a"
  }
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
  tags = {
    yor_trace = "f15c9740-acb2-4b27-a445-5a4dbb424e1a"
  }
}
