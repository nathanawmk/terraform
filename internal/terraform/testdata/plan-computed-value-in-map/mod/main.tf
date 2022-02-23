variable "services" {
  type = list(map(string))
}

resource "aws_instance" "inner2" {
  looked_up = var.services[0]["elb"]
  tags = {
    yor_trace = "9dbbf550-6016-4370-89e3-f96dedce3ee8"
  }
}

