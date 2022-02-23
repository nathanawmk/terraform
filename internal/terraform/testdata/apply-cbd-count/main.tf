resource "aws_instance" "bar" {
  count = 2
  foo   = "bar"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "bdbb0db7-7421-4b7e-955a-83466a548898"
  }
}
