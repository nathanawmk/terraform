resource "aws_instance" "child" {
  ami = "child"
  tags = {
    yor_trace = "82298fbd-eadc-4010-ab37-4ed329c9bc03"
  }
}
