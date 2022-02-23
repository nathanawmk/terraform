resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "a00f1d51-6db1-4415-8539-aa0276166029"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "bbc163d6-e624-4944-ab7c-368c77c773dc"
  }
}
