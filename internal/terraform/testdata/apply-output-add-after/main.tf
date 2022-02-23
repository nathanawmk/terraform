provider "aws" {}

resource "aws_instance" "test" {
  foo   = "${format("foo%d", count.index)}"
  count = 2
  tags = {
    yor_trace = "fe7b2181-1e94-40fd-8462-6de0da84c68d"
  }
}
