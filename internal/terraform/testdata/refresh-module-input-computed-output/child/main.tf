variable "input" {
  type = string
}

resource "aws_instance" "foo" {
  foo = var.input
  tags = {
    yor_trace = "5b41b474-aca5-4114-8446-805a8aab8114"
  }
}

output "foo" {
  value = aws_instance.foo.foo
}
