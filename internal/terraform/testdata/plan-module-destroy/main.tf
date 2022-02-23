module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "8ccf1cca-02bc-4a2f-8219-d115ff8cf823"
  }
}
