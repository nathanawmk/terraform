resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    yor_trace = "3593b212-4b52-4d6c-9df6-e74569e6d734"
  }
}
