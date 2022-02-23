resource "aws_instance" "baz" {
  foo = "bar"
  tags = {
    yor_trace = "37dba256-5407-4962-b997-5ded794c751f"
  }
}
