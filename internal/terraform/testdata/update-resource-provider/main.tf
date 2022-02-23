provider "aws" {
  alias = "foo"
}

resource "aws_instance" "bar" {
  provider = "aws.foo"
  tags = {
    yor_trace = "7483dea9-cf43-46c8-a5cf-d46672655302"
  }
}
