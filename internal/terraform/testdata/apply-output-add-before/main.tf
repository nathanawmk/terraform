provider "aws" {}

resource "aws_instance" "test" {
  foo   = "${format("foo%d", count.index)}"
  count = 2
  tags = {
    yor_trace = "6aabcb3f-3673-4adc-b344-2668c0077e71"
  }
}
