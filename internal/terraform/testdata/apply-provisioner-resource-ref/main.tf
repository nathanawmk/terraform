resource "aws_instance" "bar" {
  num = "2"

  provisioner "shell" {
    command = "${aws_instance.bar.num}"
  }
  tags = {
    yor_trace = "b36d72f1-716b-4b50-9194-c841425bad39"
  }
}
