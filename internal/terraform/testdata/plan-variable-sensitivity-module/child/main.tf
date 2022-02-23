variable "foo" {
  type = string
}

// "bar" is defined as sensitive by both the parent and the child
variable "bar" {
  sensitive = true
}

resource "aws_instance" "foo" {
  foo   = var.foo
  value = var.bar
  tags = {
    yor_trace = "50ad5d69-8f52-45e0-a9db-f699b118416c"
  }
}
