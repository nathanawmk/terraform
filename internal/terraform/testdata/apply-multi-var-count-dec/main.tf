variable "num" {}

resource "aws_instance" "foo" {
  count = "${var.num}"
  value = "foo"
  tags = {
    yor_trace = "cf936314-7e6f-4152-a85a-e11988c50808"
  }
}

resource "aws_instance" "bar" {
  ami = "special"

  value = "${join(",", aws_instance.foo.*.id)}"
  tags = {
    yor_trace = "b6043105-91d5-4533-b8fa-5e480b5cb8fd"
  }
}
