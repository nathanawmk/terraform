resource "aws_instance" "foo" {
  num = 42
  tags = {
    yor_trace = "fa0ca8d8-3214-40cc-bef8-cc954b958519"
  }
}
