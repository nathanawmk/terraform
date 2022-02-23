resource "aws_instance" "b" {
  count       = length(var.ids)
  require_new = var.ids[count.index]
  tags = {
    yor_trace = "e8e1e1bd-f753-44f2-9655-1e6abea505d7"
  }
}

variable "ids" {
  type = list(string)
}
