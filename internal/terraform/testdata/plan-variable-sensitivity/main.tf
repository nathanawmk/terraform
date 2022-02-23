variable "sensitive_var" {
  default   = "foo"
  sensitive = true
}

resource "aws_instance" "foo" {
  foo = var.sensitive_var
  tags = {
    yor_trace = "ddef4723-438f-4c21-9caf-a46faa0aac6a"
  }
}