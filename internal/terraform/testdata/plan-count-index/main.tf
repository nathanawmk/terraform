resource "aws_instance" "foo" {
  count = 2
  foo   = "${count.index}"
  tags = {
    yor_trace = "7ac13be9-58af-4011-908a-7d7bb2666719"
  }
}
