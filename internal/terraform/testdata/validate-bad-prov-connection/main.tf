resource "aws_instance" "foo" {
  provisioner "shell" {
    test_string = "test"
    connection {
      user = "test"
    }
  }
  tags = {
    yor_trace = "45e3783b-25de-47d1-bfb8-ae8bdd61b5bd"
  }
}
