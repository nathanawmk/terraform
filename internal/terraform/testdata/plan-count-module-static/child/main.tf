variable "value" {}

resource "aws_instance" "foo" {
  count = "${var.value}"
  tags = {
    yor_trace = "3b544263-8a99-483e-a2d8-c89703ee89a8"
  }
}
