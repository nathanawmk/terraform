resource "aws_instance" "foo" {
  count = "${list}"
  tags = {
    yor_trace = "c4e4e6ed-9c17-410b-adc5-d23cbf7bb41e"
  }
}
