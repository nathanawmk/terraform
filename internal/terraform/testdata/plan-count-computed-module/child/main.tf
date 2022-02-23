variable "value" {}

resource "aws_instance" "bar" {
  count = "${var.value}"
  tags = {
    yor_trace = "07aca806-7fdc-4aa6-9174-98686ecd328c"
  }
}
