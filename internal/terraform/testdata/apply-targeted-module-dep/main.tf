module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  foo = "${module.child.output}"
  tags = {
    yor_trace = "8736d635-be15-48cc-84a6-e2a5f2fc2876"
  }
}
