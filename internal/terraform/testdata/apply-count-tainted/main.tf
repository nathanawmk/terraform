resource "aws_instance" "foo" {
  count = 2
  foo   = "foo"
  tags = {
    yor_trace = "d17aa30c-b77d-4226-aec8-9544e3dc4d1e"
  }
}
