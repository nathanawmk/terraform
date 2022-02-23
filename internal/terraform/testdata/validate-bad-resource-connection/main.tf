resource "aws_instance" "foo" {
  connection {
    user = "test"
  }
  provisioner "shell" {
    test_string = "test"
  }
  tags = {
    yor_trace = "9455359d-b60f-4597-a6b3-b2bcde9a2b5f"
  }
}
