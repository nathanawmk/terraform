resource "aws_instance" "foo" {
  count   = "1"
  current = "${count.index}"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    yor_trace = "2262257a-e7a4-4e38-9595-5b48597a2f29"
  }
}
