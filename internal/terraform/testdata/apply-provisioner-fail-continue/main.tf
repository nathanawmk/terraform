resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    on_failure = "continue"
  }
  tags = {
    yor_trace = "c64cb7b0-0eb4-401c-b8a3-50a8a280cf4f"
  }
}
