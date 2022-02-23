resource "aws_instance" "web" {
  foo   = "${aws_instance.web.0.foo}"
  count = 4
  tags = {
    yor_trace = "79b1325b-9c6a-4ce3-ace0-d003b3717fca"
  }
}
