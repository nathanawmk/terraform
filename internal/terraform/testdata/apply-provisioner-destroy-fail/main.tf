resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command    = "one"
    when       = "destroy"
    on_failure = "continue"
  }

  provisioner "shell" {
    command = "two"
    when    = "destroy"
  }
  tags = {
    yor_trace = "a54eb369-91f2-4a53-a771-79c4f3757bea"
  }
}
