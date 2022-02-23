resource "aws_instance" "foo" {
  tags = {
    yor_trace = "ce28ccb7-c1a5-45b3-92ae-4ccf3c52014c"
  }
}

resource "aws_instance" "bar" {
  tags = {
    yor_trace = "8767e179-9933-476c-b1b8-9697c99b4085"
  }
}
