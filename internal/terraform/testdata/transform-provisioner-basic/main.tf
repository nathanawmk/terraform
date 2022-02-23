resource "aws_instance" "web" {
  provisioner "shell" {}
  tags = {
    yor_trace = "21a6abc6-8431-4939-a0b2-67d1e88b9dcd"
  }
}
