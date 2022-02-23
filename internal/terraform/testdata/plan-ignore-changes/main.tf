variable "foo" {}

resource "aws_instance" "foo" {
  ami = var.foo

  lifecycle {
    ignore_changes = [ami]
  }
  tags = {
    yor_trace = "2032a0fc-2494-4fcb-8266-e146ed4dbf57"
  }
}
