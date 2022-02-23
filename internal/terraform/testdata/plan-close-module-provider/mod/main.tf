provider "aws" {
  alias = "mod"
}

resource "aws_instance" "bar" {
  provider = "aws.mod"
  tags = {
    yor_trace = "2e2c78d1-3e4d-4a00-9bde-4d00dea48d93"
  }
}
