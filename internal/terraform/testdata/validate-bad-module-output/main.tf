module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.bad}"
  tags = {
    yor_trace = "5d9c7f18-aefe-4f5f-93ac-f010f357fe72"
  }
}
