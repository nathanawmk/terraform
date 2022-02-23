resource "aws_instance" "foo" {
  count = 3

  provisioner "local-exec" {
    command = "echo ${aws_instance.foo.0.id} ${aws_instance.foo.1.id} ${aws_instance.foo.2.id}"
  }
  tags = {
    yor_trace = "3462d6d3-476e-4a76-896e-2836e9d85995"
  }
}
