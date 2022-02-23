resource "aws_instance" "foo" {
  cwd    = "${path.cwd}/barpath"
  module = "${path.module}/foopath"
  root   = "${path.root}/barpath"
  tags = {
    yor_trace = "77d1820b-268a-4b36-b130-f3257f47bb02"
  }
}
