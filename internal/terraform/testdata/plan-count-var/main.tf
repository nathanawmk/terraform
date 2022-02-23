variable "instance_count" {}

resource "aws_instance" "foo" {
  count = var.instance_count
  foo   = "foo"
  tags = {
    yor_trace = "3b0372e5-2f1b-4cd8-a05d-b0d6a6eabace"
  }
}

resource "aws_instance" "bar" {
  foo = join(",", aws_instance.foo.*.foo)
  tags = {
    yor_trace = "c1405bd5-29f3-44b2-ba33-b36e9180ca09"
  }
}
