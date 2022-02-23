provider "aws" {
  value = "${test_instance.bar.value}"
}

resource "aws_instance" "foo" {
  bar = "value"
  tags = {
    yor_trace = "bcf10381-a9d2-4036-88f5-3b46f9c30f8d"
  }
}

resource "test_instance" "bar" {
  value = "yes"
}
