resource "aws_instance" "foo" {
  tags = {
    yor_trace = "34720b0c-cd65-479e-a7b5-2b4021686834"
  }
}

data "aws_data_source" "foo" {
  foo = "${aws_instance.foo.computed}"
}
