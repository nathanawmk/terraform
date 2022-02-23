variable "param" {
  type = list(string)
}

resource "aws_instance" "test" {
  count = "2"
  thing = "doesnt"
  tags = {
    yor_trace = "11e5e98e-91ba-4438-bf1a-664544107401"
  }
}

output "out_from_splat" {
  value = aws_instance.test.*.thing
}
