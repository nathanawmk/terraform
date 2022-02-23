resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "dbcf7943-2c81-4928-8bcb-ab6aadb6d22e"
  }
}

resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    yor_trace = "35691cb0-1a8e-425d-a36a-7c56d616c0cc"
  }
}
