resource "aws_instance" "web" {
  foo   = "${aws_instance.web.*.foo}"
  count = 4
  tags = {
    yor_trace = "2b319f61-f05b-4905-be07-31aaad5b7df1"
  }
}
