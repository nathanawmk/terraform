resource "aws_instance" "foo" {
  count = 3
  foo   = "number ${count.index}"

  provisioner "shell" {
    command = aws_instance.foo[0].foo
    order   = count.index
  }
  tags = {
    yor_trace = "527f2adb-cc81-412d-b45c-830712a49114"
  }
}
