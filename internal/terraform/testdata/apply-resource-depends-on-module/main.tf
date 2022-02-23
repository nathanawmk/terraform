module "child" {
  source = "./child"
}

resource "aws_instance" "a" {
  ami = "parent"

  depends_on = ["module.child"]
  tags = {
    yor_trace = "b2d7bd6c-6848-41d2-9525-fcaae26705e4"
  }
}
