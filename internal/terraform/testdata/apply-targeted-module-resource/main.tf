module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "053adfe1-ad43-4a99-b071-33131529027b"
  }
}
