resource "aws_instance" "foo" {
  for_each = var.input
  foo      = "bar"

  provisioner "shell" {
    command = "create ${each.key} ${each.value}"
  }

  provisioner "shell" {
    when    = "destroy"
    command = "destroy ${each.key} ${self.foo}"
  }
  tags = {
    yor_trace = "11923049-acad-480d-9c13-78b8061a8a29"
  }
}

variable "input" {
  type    = map(string)
  default = {}
}
