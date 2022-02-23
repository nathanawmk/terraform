variable "amis" {
  default = {
    us-east-1 = "foo"
    us-west-2 = "foo"
  }
}

variable "test_list" {
  type = list(string)
}

variable "test_map" {
  type = map(string)
}

variable "bar" {
  default = "baz"
}

variable "foo" {}

resource "aws_instance" "foo" {
  num  = "2"
  bar  = var.bar
  list = var.test_list
  map  = var.test_map
  tags = {
    yor_trace = "91068980-d63e-45a3-b3b8-01c76dcc4a25"
  }
}

resource "aws_instance" "bar" {
  foo = var.foo
  bar = var.amis[var.foo]
  baz = var.amis["us-east-1"]
  tags = {
    yor_trace = "fb46a94c-32a0-4463-9021-f949d289ca2d"
  }
}
