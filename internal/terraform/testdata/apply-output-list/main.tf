resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "d50e4c49-57be-4a4c-ab84-4edd0181e859"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    yor_trace = "147fa6d2-0a3d-45d0-9503-f697ec3f6d1f"
  }
}

output "foo_num" {
  value = ["${join(",", aws_instance.bar.*.foo)}"]
}
