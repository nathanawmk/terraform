module "child" {
  source = "./child"
}

resource "aws_instance" "a" {
  ami = "parent"

  depends_on = ["module.child"]
  tags = {
    yor_trace = "1bb9ddc0-0c54-4b9a-82ba-a411768925bb"
  }
}
