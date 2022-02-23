resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "5bfac33a-05b4-4fa4-909f-fff16b938eff"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "184f4ed0-b876-4d84-9917-915139971dfd"
  }
}
