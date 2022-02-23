resource "aws_instance" "test" {
  value = "${uuid()}"
  tags = {
    yor_trace = "3b8cccb4-b346-4260-8b2c-aaa6352cb4c5"
  }
}
