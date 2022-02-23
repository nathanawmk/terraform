resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "f1700c09-7078-4494-b70c-64088b6a9694"
  }
}

resource "aws_instance" "bar" {
  foo = aws_instance.foo.num
  tags = {
    yor_trace = "bcb37749-38dc-41f0-b41d-f467bdc13fd0"
  }
}

module "mod" {
  source = "./mod"
  count  = 1
}
