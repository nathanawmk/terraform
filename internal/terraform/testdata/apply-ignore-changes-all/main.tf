resource "aws_instance" "foo" {
  required_field = "set"

  lifecycle {
    ignore_changes = all
  }
  tags = {
    yor_trace = "3280ce46-38df-4cd8-986c-e0fd84cfc981"
  }
}
