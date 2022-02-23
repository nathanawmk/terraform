resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "1b84bb16-22c7-44bf-849e-2a7f6410882e"
  }
}
