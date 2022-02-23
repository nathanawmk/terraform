resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    yor_trace = "9515cbb9-4438-4408-a887-539ae905fa18"
  }
}

module "child" {
  source = "./child"
}
