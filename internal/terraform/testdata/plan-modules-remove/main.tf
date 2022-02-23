resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "02f435fa-68cf-4dc1-8579-5aa9e7f755a1"
  }
}
