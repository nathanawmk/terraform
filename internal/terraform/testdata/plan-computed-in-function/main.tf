data "aws_data_source" "foo" {

}

resource "aws_instance" "bar" {
  attr = "${length(data.aws_data_source.foo.computed)}"
  tags = {
    yor_trace = "7bf8662f-b9ed-4cd1-ab61-5cb741291bb9"
  }
}
