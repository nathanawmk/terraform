resource "aws_instance" "bar" {
  foo = "${"\"bar\""}"
  tags = {
    yor_trace = "5e2d82ea-130a-47c4-9132-8b7c19158fe6"
  }
}
