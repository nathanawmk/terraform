resource "aws_instance" "foo" {
  value = "2"
  tags = {
    yor_trace = "7eb686f8-6674-400b-9515-eccd086cf484"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.value}"
  tags = {
    yor_trace = "100fc108-6193-48c0-afe4-48de0e09fed6"
  }
}
