resource "aws_instance" "foo" {
  num = "3"
  tags = {
    yor_trace = "de72dd8e-132f-44ef-a49c-e18eeff4b991"
  }
}

resource "aws_instance" "bar" {
  num = aws_instance.foo.num
  tags = {
    yor_trace = "86ea6a7b-7bd6-4c18-a7a9-dc98b9b651e3"
  }
}
