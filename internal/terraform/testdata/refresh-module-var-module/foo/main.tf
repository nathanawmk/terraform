output "output" {
  value = "${aws_instance.foo.foo}"
}

resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    yor_trace = "bd299d26-3812-44e8-a79f-88ae7651c4a1"
  }
}
