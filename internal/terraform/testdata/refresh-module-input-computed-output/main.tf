module "child" {
  input  = aws_instance.bar.foo
  source = "./child"
}

resource "aws_instance" "bar" {
  compute = "foo"
  tags = {
    yor_trace = "2536c247-5a0e-495c-b2e1-d4bbb597e390"
  }
}
