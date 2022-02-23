resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    yor_trace = "94eff633-cf10-440b-92c9-768d7c94024a"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.foo.foo}"
}
