variable "things" {}

resource "aws_instance" "bar" {
  baz   = "baz"
  count = 2
  tags = {
    yor_trace = "7c99e4ab-888f-4eb5-928f-24a40470602a"
  }
}

resource "aws_instance" "foo" {
  foo = "${join(",", aws_instance.bar.*.baz)}"
  tags = {
    yor_trace = "c5bc2622-bc59-4eb8-a4f2-330b7011d393"
  }
}
