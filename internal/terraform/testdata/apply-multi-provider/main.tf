resource "do_instance" "foo" {
  num = "2"
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "f96154e2-7a9b-4eb5-b269-6132f51ea980"
  }
}
