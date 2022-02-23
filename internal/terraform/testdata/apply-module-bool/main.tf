module "child" {
  source = "./child"
  leader = true
}

resource "aws_instance" "bar" {
  foo = "${module.child.leader}"
  tags = {
    yor_trace = "47487130-3913-45ec-983e-2a29f3e5034c"
  }
}
