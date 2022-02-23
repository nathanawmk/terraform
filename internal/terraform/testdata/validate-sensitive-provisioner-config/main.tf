variable "secret" {
  type      = string
  default   = " password123"
  sensitive = true
}

resource "aws_instance" "foo" {
  provisioner "test" {
    test_string = var.secret
  }
  tags = {
    yor_trace = "d559197d-6d23-4d66-a41c-d21213c35f1d"
  }
}
