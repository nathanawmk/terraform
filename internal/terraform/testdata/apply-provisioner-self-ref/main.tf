resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    yor_trace = "3a88e0a7-502d-4c90-985d-3525511adafe"
  }
}
