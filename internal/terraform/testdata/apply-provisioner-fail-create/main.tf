resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    yor_trace = "e12e6662-a42c-472d-bec6-5013642a9326"
  }
}
