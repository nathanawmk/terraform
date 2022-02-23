module "grandchild" {
  source = "./child"
}

resource "aws_instance" "b" {
  ami        = "child"
  depends_on = ["module.grandchild"]
  tags = {
    yor_trace = "9bae49e0-73af-473a-87ec-a903dc142fd5"
  }
}
