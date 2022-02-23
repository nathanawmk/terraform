resource "aws_instance" "foo" {
  num = "2"

  provisioner "shell" {
    foo = "bar"
  }
  tags = {
    yor_trace = "17f2bcd4-294f-4560-90cb-56a9e6b2fbed"
  }
}
