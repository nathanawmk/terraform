module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.good}"
  tags = {
    yor_trace = "ec9470f8-0d3c-4504-8f91-81e707ce5893"
  }
}
