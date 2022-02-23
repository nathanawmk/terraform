resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command = "${aws_instance.foo.foo}"
  }
  tags = {
    yor_trace = "50e8d7dd-1827-43c9-84af-c1318187e37d"
  }
}
