data "aws_data_source" "foo" {
  compute = "value"
}

resource "aws_instance" "bar" {
  count = "${data.aws_data_source.foo.value}"
  tags = {
    yor_trace = "b1e870a5-ff58-4714-a952-35317d4b3900"
  }
}
