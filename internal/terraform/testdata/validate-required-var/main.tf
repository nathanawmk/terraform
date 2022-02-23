variable "foo" {}

resource "aws_instance" "web" {
  ami = "${var.foo}"
  tags = {
    yor_trace = "8a1c8838-2857-431a-a7c7-61ea6391d987"
  }
}
