resource "aws_instance" "foo" {
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    yor_trace = "35aff29b-aa2d-4d98-9bac-d71d94fea8ef"
  }
}
