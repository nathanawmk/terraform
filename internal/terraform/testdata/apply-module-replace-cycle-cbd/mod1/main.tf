resource "aws_instance" "a" {
  require_new = "new"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "63c7c3ab-7a38-4fc3-91e7-ab9e07057698"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
