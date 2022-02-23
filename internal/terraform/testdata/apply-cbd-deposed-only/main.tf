resource "aws_instance" "bar" {
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "3ac47ebf-aa1e-45d0-bc9c-4ec652fd4972"
  }
}
