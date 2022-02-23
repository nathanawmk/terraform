resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "c3d0d2c3-cfea-43cc-a79a-feb10544dd64"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    yor_trace = "693291b7-6b60-48c6-94f8-3403628d5a86"
  }
}

output "foo_num" {
  value = "${join(",", aws_instance.bar.*.foo)}"
}
