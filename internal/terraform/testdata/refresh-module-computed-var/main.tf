module "child" {
  source = "./child"
  value  = "${join(" ", aws_instance.test.*.id)}"
}

resource "aws_instance" "test" {
  value = "yes"
  tags = {
    yor_trace = "b210f28a-e73e-4c4a-80a2-960dddaa0314"
  }
}
