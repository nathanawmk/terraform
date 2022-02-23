module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.num}"
  tags = {
    yor_trace = "ffdb24a8-2736-4ee1-b2a0-4c93900d3b67"
  }
}
