resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    yor_trace = "3a45a15d-12b1-4c55-9f30-577ab5475497"
  }
}

module "child" {
  source = "./child"

  var = "${aws_instance.foo.foo}"
}
