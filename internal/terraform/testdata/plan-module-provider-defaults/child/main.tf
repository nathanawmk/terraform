provider "aws" {
  from = "child"
  to   = "child"
}

resource "aws_instance" "foo" {
  from = "child"
  tags = {
    yor_trace = "64bb788e-97f2-4a57-b4cb-142b58852a6b"
  }
}
