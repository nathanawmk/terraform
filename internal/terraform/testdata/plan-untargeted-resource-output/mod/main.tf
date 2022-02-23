locals {
  one = 1
}

resource "aws_instance" "a" {
  count = "${local.one}"
  tags = {
    yor_trace = "f1d17dc6-1b43-4c49-86e7-e69acdf8ff0f"
  }
}

resource "aws_instance" "b" {
  count = "${local.one}"
  tags = {
    yor_trace = "cb7a31e2-26de-43fa-a79c-c26fb22872b4"
  }
}

output "output" {
  value = "${join("", coalescelist(aws_instance.a.*.id, aws_instance.b.*.id))}"
}
