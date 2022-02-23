resource "aws_instance" "foo" {
  name  = "foo ${count.index}"
  count = 3
  tags = {
    yor_trace = "0ff03140-0bf4-4cf8-a497-f533846157a6"
  }
}

resource "aws_instance" "bar" {
  foo_name = "${aws_instance.foo.*.name[count.index]}"
  count    = 3
  tags = {
    yor_trace = "a3e18330-722b-4ee3-b2b8-d85b96c13852"
  }
}
