resource "aws_instance" "foo" {
  required_field = "set"

  lifecycle {
    ignore_changes = ["required_field"]
  }
  tags = {
    yor_trace = "ad648e95-81d9-46bc-bcad-30dd00c57704"
  }
}
