provider "aws" {
  foo = "bar"
}

resource "aws_instance" "test" {
  provisioner "shell" {
    test_string = "foo"
  }
  tags = {
    yor_trace = "a2b75464-29bb-46cc-9a29-7ae9c407a253"
  }
}
