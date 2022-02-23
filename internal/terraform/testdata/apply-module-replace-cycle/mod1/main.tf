resource "aws_instance" "a" {
  require_new = "new"
  tags = {
    yor_trace = "8b4ff001-86b5-4da4-a658-26e8949eec62"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
