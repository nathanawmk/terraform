resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "df341ae3-e328-4781-8599-05f6dde384f0"
  }
}

resource "aws_instance" "bar" {
  foo = "${var.foo}"
  tags = {
    yor_trace = "79d08a23-cb0e-45a4-8e44-130fb709e4ea"
  }
}
