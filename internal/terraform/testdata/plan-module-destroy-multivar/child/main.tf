variable "instance_count" {
  default = "1"
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  bar   = "bar"
  tags = {
    yor_trace = "de24511c-aed1-4a5e-9fb9-b1a021f366a3"
  }
}
