resource "aws_instance" "foo" {
  count = 2
  ami   = "ami-bcd456"
  lifecycle {
    ignore_changes = ["ami"]
  }
  tags = {
    yor_trace = "95902e32-63be-4a5a-83d7-f80d2a8d9480"
  }
}

resource "aws_eip" "foo" {
  count    = 2
  instance = "${aws_instance.foo.*.id[count.index]}"
  tags = {
    yor_trace = "21c6eb7d-f193-47b7-9ca1-72c2432b73a4"
  }
}
