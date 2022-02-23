resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "15c1cab6-9c62-4563-89ca-2520094af817"
  }
}
