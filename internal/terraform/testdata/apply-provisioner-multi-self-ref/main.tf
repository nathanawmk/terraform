resource "aws_instance" "foo" {
  count = 3
  foo   = "number ${count.index}"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    yor_trace = "07273b11-44e3-412a-8e9c-fbf94bba1ad8"
  }
}
