variable "foo" {}
variable "bar" {}

resource "aws_instance" "foo" {
  count = 2
  num   = var.foo
  bar   = "baz" #var.bar
  tags = {
    yor_trace = "b1172afd-332e-4407-b83e-80f5892f7b5c"
  }
}

output "out" {
  value = aws_instance.foo[0].id
}
