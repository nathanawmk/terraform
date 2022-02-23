module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.num}"
  tags = {
    yor_trace = "59dd11a5-49db-4604-8a08-c14e8821a8c6"
  }
}
