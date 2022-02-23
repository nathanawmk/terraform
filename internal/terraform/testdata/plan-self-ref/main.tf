resource "aws_instance" "web" {
  foo = "${aws_instance.web.foo}"
  tags = {
    yor_trace = "907ae80e-974e-4565-996e-934d1fdfe128"
  }
}
