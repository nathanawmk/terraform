provider "aws" {
  foo = "bar"
}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    yor_trace = "5c55aa2e-ad78-45bf-a17b-945b78d56465"
  }
}
