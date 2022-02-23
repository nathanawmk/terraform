resource "aws_instance" "foo" {
  foo = "bar-$${baz}"
  tags = {
    yor_trace = "526a33f9-f639-423e-9307-d450b32e7e9d"
  }
}
