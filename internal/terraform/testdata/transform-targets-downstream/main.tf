resource "aws_instance" "foo" {
  tags = {
    yor_trace = "3734fd75-8dc6-4e1a-8cde-f3dbd303fe26"
  }
}

module "child" {
  source = "./child"
}

output "root_id" {
  value = "${aws_instance.foo.id}"
}

output "child_id" {
  value = "${module.child.id}"
}

output "grandchild_id" {
  value = "${module.child.grandchild_id}"
}
