module "child" {
  input  = "42"
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "2"
  tags = {
    yor_trace = "1752daf1-2b7b-42a3-acae-efaf63cc9f60"
  }
}
