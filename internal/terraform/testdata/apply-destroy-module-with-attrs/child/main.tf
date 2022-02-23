variable "vpc_id" {}

resource "aws_instance" "child" {
  vpc_id = var.vpc_id
  tags = {
    yor_trace = "4cf2fbed-e427-426d-b3fd-e0dfea65b439"
  }
}

output "modout" {
  value = aws_instance.child.id
}
