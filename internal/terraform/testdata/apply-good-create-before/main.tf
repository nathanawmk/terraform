resource "aws_instance" "bar" {
  require_new = "xyz"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "979d2551-5814-47d0-98dc-437e458452ed"
  }
}
