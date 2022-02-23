resource "aws_instance" "a" {
  foo = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 20]
  tags = {
    yor_trace = "6bd4a953-7d1b-4dba-ad77-7138aa064525"
  }
}

resource "aws_instance" "b" {
  foo = "${aws_instance.a.foo}"
  tags = {
    yor_trace = "e3b6e262-abef-47fa-8f9b-bed9bd80c5fe"
  }
}
