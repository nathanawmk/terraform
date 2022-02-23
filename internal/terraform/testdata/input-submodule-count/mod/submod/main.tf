variable "list" {
  type = list(string)
}

resource "aws_instance" "bar" {
  count = var.list[0]
  tags = {
    yor_trace = "a4b6b94f-c94a-4707-8bc5-2326b383370b"
  }
}
