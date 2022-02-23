module "child" {
  input  = "${aws_instance.bar.foo}"
  source = "./child"
}

resource "aws_instance" "bar" {
  compute = "foo"
  tags = {
    yor_trace = "166600a2-2d6c-4f11-b4cb-6476b94cf758"
  }
}
