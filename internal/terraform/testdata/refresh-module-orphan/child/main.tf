module "grandchild" {
  source = "./grandchild"
}

resource "aws_instance" "bar" {
  grandchildid = "${module.grandchild.id}"
  tags = {
    yor_trace = "85cade39-c697-4b75-a230-be294c1e0471"
  }
}

output "id" { value = "${aws_instance.bar.id}" }
output "grandchild_id" { value = "${module.grandchild.id}" }
