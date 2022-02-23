resource "aws_instance" "create" {
  bar = "abc"
  tags = {
    yor_trace = "da57633e-5fdf-4640-93d4-f341f62aae69"
  }
}

resource "aws_instance" "other" {
  var = "${aws_instance.create.id}"
  foo = "${aws_instance.create.bar}"
  tags = {
    yor_trace = "d6e70881-cfbd-4f6a-8dfe-c23198f8cfb4"
  }
}
