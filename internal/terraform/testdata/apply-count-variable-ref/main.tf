variable "foo" {
  default = "2"
}

resource "aws_instance" "foo" {
  count = "${var.foo}"
  tags = {
    yor_trace = "170ca330-0dbf-48e4-b171-242ccf03a9ef"
  }
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
  tags = {
    yor_trace = "5a4db514-a374-4164-8db0-da7b4dc0bc4e"
  }
}
