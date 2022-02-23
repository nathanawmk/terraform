resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    yor_trace = "a3353386-53e0-49ab-80da-c0bec0dc8784"
  }
}
