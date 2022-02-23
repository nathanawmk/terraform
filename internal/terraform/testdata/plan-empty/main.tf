resource "aws_instance" "foo" {
  tags = {
    yor_trace = "b9a92d95-aaee-4382-9287-db0dc8ac9215"
  }
}

resource "aws_instance" "bar" {
  tags = {
    yor_trace = "130c6498-11e2-414a-b591-33b2eed70f06"
  }
}
