provider "aws" {
  from = "child"
  to   = "child"
}

resource "aws_instance" "foo" {
  from = "child"
  tags = {
    yor_trace = "3fe89446-41d4-4b59-b728-42368156184d"
  }
}
