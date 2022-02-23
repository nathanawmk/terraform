resource "aws_instance" "c" {
  ami = "grandchild"
  tags = {
    yor_trace = "d972f6d9-c332-4c1b-bcad-5b55287a413b"
  }
}
