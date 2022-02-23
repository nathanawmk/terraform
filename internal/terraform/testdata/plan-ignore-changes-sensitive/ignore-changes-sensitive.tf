variable "foo" {
  sensitive = true
}

resource "aws_instance" "foo" {
  ami = var.foo

  lifecycle {
    ignore_changes = [ami]
  }
  tags = {
    yor_trace = "f87b3aad-0e9e-4d50-82ee-8e60a24177ab"
  }
}
