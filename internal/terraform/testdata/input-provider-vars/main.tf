variable "foo" {}

resource "aws_instance" "foo" {
  foo = "${var.foo}"
  tags = {
    yor_trace = "6a434eb7-255c-4247-9d74-619c78e407b5"
  }
}
