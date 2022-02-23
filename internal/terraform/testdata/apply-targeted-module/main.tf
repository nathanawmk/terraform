module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    yor_trace = "6d507787-5370-4e61-8272-8588e94c7da9"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "d4a6f775-f0cf-4e06-bc87-e549c83839c2"
  }
}
