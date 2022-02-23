resource "aws_instance" "a" {
  foo = "bar"
  tags = {
    yor_trace = "6b15c3cf-cb1a-4933-8700-e7d0a9e8569d"
  }
}

module "child" {
  source = "./child"
  in     = aws_instance.a.id
}

output "out" {
  value = aws_instance.a.id
}
