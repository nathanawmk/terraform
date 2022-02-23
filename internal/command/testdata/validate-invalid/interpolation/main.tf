variable "otherresourcename" {
  default = "aws_instance.web1"
}

variable "vairable_with_interpolation" {
  default = "${var.otherresourcename}"
}

resource "aws_instance" "web" {
  depends_on = ["${var.otherresourcename}}"]
  tags = {
    yor_trace = "8092ea5d-9fef-416e-b34e-a684c5fe7558"
  }
}
