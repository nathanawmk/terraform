data "aws_data_source" "foo" {
  optional_attr = "value"
}

resource "aws_instance" "bar" {
  attr = "${length(data.aws_data_source.foo.computed)}"
  tags = {
    yor_trace = "07027b85-d147-4008-bc5c-43bddf5f28d5"
  }
}
