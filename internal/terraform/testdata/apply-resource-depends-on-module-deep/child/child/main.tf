resource "aws_instance" "c" {
  ami = "grandchild"
  tags = {
    yor_trace = "3a5b8e0b-d68d-424b-aec8-f5a16f05d89c"
  }
}
