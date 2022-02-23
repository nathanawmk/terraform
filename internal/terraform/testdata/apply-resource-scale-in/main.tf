variable "instance_count" {}

resource "aws_instance" "one" {
  count = var.instance_count
  tags = {
    yor_trace = "7f1cd60f-4191-4338-9eaf-7c17e466be6b"
  }
}

locals {
  one_id = element(concat(aws_instance.one.*.id, [""]), 0)
}

resource "aws_instance" "two" {
  value = local.one_id
  tags = {
    yor_trace = "8a5473ab-c55f-4c2b-a06a-39fa20fa4e83"
  }
}
