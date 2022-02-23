resource "aws_instance" "bar" {
  require_new = "xyz"
  provisioner "shell" {}
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "7d316775-4243-4086-99d3-9b3fb67a4c39"
  }
}
