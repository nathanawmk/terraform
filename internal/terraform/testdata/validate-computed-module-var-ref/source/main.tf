resource "aws_instance" "source" {
  attr = "foo"
  tags = {
    yor_trace = "e9f9f485-230d-4b26-861d-cd37b1ff3934"
  }
}

output "sourceout" {
  value = "${aws_instance.source.attr}"
}
