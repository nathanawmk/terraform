variable "destin" {}

resource "aws_instance" "dest" {
  attr = "${var.destin}"
  tags = {
    yor_trace = "483036f6-279b-47f1-90eb-1724a10c4a16"
  }
}
