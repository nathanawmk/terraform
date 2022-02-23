resource "aws_instance" "foo" {
  count   = "1"
  current = "${count.index}"
  tags = {
    yor_trace = "992df156-f14d-4620-b192-0cd1412e9dc9"
  }
}
