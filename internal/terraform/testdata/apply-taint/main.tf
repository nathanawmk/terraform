resource "aws_instance" "bar" {
  num = "2"
  tags = {
    yor_trace = "7e030bbf-eec5-4ba6-9069-3caa2af93651"
  }
}
