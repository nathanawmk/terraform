resource "aws_instance" "foo" {
  tags = {
    yor_trace = "d0b5af36-8f32-45ba-b7fb-9ff9cef4e432"
  }
}

module "grandchild" {
  source = "./grandchild"
}

output "id" {
  value = "${aws_instance.foo.id}"
}

output "grandchild_id" {
  value = "${module.grandchild.id}"
}
