provider "aws" {
  access_key = "a"
  secret_key = "b"
  region     = "us-east-1"
}

resource "aws_instance" "foo" {
  ami             = "ami-foo"
  instance_type   = "t2.micro"
  security_groups = "${aws_security_group.foo.name}"
  tags = {
    yor_trace = "3e501ba2-e323-481d-8f7c-e8ab97772d19"
  }
}

resource "aws_security_group" "foo" {
  name        = "foobar"
  description = "foobar"
  tags = {
    yor_trace = "5a901ce6-1abb-4b81-9187-7a2da04b0719"
  }
}
