resource "aws_instance" "foo" {
  num = "2"
  provisioner "shell" {}
  tags = {
    yor_trace = "d7ed64f3-0f4c-469c-b7b5-6cf49cd6c227"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    yor_trace = "cd39a900-0876-43f5-bcc0-9cf15be93914"
  }
}
