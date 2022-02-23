variable "list" {
  default = ["1", "2"]
}

resource "aws_instance" "a" {
  count = length(var.list)
  tags = {
    yor_trace = "ee7d84ec-0817-4868-baf0-4562e1382dba"
  }
}

locals {
  ids = aws_instance.a[*].id
}

module "empty" {
  source = "./mod"
  input  = zipmap(var.list, local.ids)
}

output "out" {
  value = aws_instance.a[*].id
}
