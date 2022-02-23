module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "b5f927bd-4c59-461a-bd26-679b74814be7"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "d9b967bc-46ac-4380-8b50-44c2434be4f8"
  }
}
