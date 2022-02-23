resource "aws_instance" "bar" {
  provisioner "shell" {
    foo = "bar"
  }
  tags = {
    yor_trace = "5b2b6577-6187-47fa-a336-64e1f77ab467"
  }
}
