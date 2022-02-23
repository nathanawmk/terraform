resource "aws_instance" "test" {
  foo = "bar"
  tags = {
    yor_trace = "f6e83a12-b46c-42c6-8248-ee85e33642b1"
  }
}
