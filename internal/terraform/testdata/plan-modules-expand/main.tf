locals {
  val = 2
  bar = "baz"
  m = {
    "a" = "b"
  }
}

variable "myvar" {
  default = "baz"
}

module "count_child" {
  count  = local.val
  foo    = count.index
  bar    = var.myvar
  source = "./child"
}

module "for_each_child" {
  for_each = aws_instance.foo
  foo      = 2
  bar      = each.key
  source   = "./child"
}

resource "aws_instance" "foo" {
  for_each = local.m
  tags = {
    yor_trace = "491eccb2-51db-49ad-823c-bca85d3c17f9"
  }
}
