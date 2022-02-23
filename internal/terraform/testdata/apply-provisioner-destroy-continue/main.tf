resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command    = "one"
    when       = "destroy"
    on_failure = "continue"
  }

  provisioner "shell" {
    command    = "two"
    when       = "destroy"
    on_failure = "continue"
  }
  tags = {
    yor_trace = "f8e0bb69-81f9-4faa-bbb3-69cb70d6524e"
  }
}
