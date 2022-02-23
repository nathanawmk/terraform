resource "aws_instance" "foo" {
  require_new = "yes"

  lifecycle {
    prevent_destroy = true
  }
  tags = {
    yor_trace = "dc8e1eda-cbcb-472c-b116-02a39505b05c"
  }
}
