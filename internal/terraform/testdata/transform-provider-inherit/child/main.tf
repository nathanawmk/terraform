provider "aws" {
  alias = "bar"
}

resource "aws_instance" "thing" {
  provider = aws.bar
  tags = {
    yor_trace = "42ec810d-32a4-4c66-a6a5-058b60aa5de6"
  }
}
