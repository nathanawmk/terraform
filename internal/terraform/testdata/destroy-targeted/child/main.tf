variable "in" {
}

resource "aws_instance" "b" {
  foo = var.in
  tags = {
    yor_trace = "a9fc6c60-3a1a-40b4-bfcc-5bb8fd65f2f8"
  }
}

output "out" {
  value = var.in
}
