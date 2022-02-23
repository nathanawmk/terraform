resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = all
  }
  tags = {
    yor_trace = "75a53720-fbfa-45e0-9414-089e87fc0698"
  }
}
