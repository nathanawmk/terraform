resource "aws_instance" "foo" {
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "b544555f-8c2b-45dc-8ef2-ed13b2fa7997"
  }
}
