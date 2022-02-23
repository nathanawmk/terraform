resource "aws_instance" "foo" {
  count    = 2
  num      = "2"
  computed = data.aws_vpc.bar[count.index].id

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "3bc5f148-85e7-4011-82e6-ed36b3d8e7c9"
  }
}

data "aws_vpc" "bar" {
  count = 2
  foo   = count.index
}
