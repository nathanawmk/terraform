resource "vault_instance" "foo" {}

provider "aws" {
  addr = "${vault_instance.foo.id}"
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "ec583304-bd1c-43e3-b622-5a726916a938"
  }
}
