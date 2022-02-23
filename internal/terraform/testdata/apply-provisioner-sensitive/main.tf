variable "password" {
  type      = string
  sensitive = true
}

resource "aws_instance" "foo" {
  connection {
    host     = "localhost"
    type     = "telnet"
    user     = "superuser"
    port     = 2222
    password = var.password
  }

  provisioner "shell" {
    command = "echo ${var.password} > secrets"
  }
  tags = {
    yor_trace = "a59dba6a-9eff-4155-8354-12f4735edd07"
  }
}
