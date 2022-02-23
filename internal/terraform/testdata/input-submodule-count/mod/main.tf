variable "instance_count" {
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  tags = {
    yor_trace = "fdf31a4b-5716-4b58-a52a-83131ae8a7bf"
  }
}

module "submod" {
  source = "./submod"
  list   = ["${aws_instance.foo.*.id}"]
}
