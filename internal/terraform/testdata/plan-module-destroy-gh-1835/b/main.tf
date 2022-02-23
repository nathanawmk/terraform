variable "a_id" {}

resource "aws_instance" "b" {
  foo = "echo ${var.a_id}"
  tags = {
    yor_trace = "03c3cb28-279f-43ed-89df-1395b2224005"
  }
}
