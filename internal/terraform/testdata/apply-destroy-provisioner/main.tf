resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    yor_trace = "b4c50cb5-2be2-4160-b995-32152edf76d2"
  }
}
