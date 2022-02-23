# expressions with variable reference
variable "foo" {
  type = string
}

resource "aws_instance" "foo" {
  for_each = toset(
    [for i in range(0, 3) : sha1("${i}${var.foo}")]
  )
  foo = "foo"
  tags = {
    yor_trace = "69f53dcf-e111-4e68-bfd9-24373a6f83ca"
  }
}

# referencing another resource, which means it has some unknown values in it
resource "aws_instance" "one" {
  for_each = toset(["a", "b"])
  tags = {
    yor_trace = "621836bb-b825-4ed1-bef4-b6b6087e779d"
  }
}

resource "aws_instance" "two" {
  for_each = aws_instance.one
  tags = {
    yor_trace = "25e2e4fa-a59c-4e13-8267-fb55b0218d96"
  }
}
