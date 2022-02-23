provider "aws" {
  alias = "eu"
}

resource "aws_instance" "foo" {
  provider = "aws.eu"
  tags = {
    yor_trace = "88c14159-b299-474f-b434-e5372d918d3b"
  }
}
