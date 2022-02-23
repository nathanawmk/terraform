resource "aws_instance" "b" {
  count       = length(var.ids)
  require_new = var.ids[count.index]
  tags = {
    yor_trace = "182e058f-93c0-4054-908a-9305e0e04835"
  }
}

variable "ids" {
  type = list(string)
}
