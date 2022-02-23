resource "aws_instance" "bar" {
  require_new = "xyz"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "3f149ac0-07ad-437d-99bd-b92c1598125e"
  }
}
