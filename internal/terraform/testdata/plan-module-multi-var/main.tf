resource "aws_instance" "parent" {
  count = 2
  tags = {
    yor_trace = "9317915e-28e3-4be0-919b-e872dc7d0dfa"
  }
}

module "child" {
  source = "./child"
  things = "${join(",", aws_instance.parent.*.id)}"
}

