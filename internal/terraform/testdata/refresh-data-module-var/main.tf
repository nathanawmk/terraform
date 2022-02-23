resource "aws_instance" "A" {
  foo = "bar"
  tags = {
    yor_trace = "564e293a-cc1c-44ca-849c-7304b9183435"
  }
}

module "child" {
  source = "./child"
  key    = "${aws_instance.A.id}"
}
