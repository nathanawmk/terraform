resource "aws_instance" "foo" {
  count = 13
  tags = {
    yor_trace = "ed57ee42-809d-44e9-abb5-3fb2080be4c2"
  }
}
