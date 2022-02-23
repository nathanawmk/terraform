resource "aws_instance" "foo" {
  count = "${length("abc")}"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "6885dc12-e2ca-4c77-b66e-e5e660cc74a2"
  }
}
