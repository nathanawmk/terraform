module "child" {
  source = "./child"
}

resource "aws_instance" "b" {
  id   = "b"
  blah = "${module.child.a_output}"
  tags = {
    yor_trace = "d1f63a06-f1dc-4e42-ae21-ffd2c56764a1"
  }
}
