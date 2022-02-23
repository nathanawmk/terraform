resource "aws_instance" "foo" {
  user_data   = "x"
  require_new = "yes"

  set = [{
    a = "1"
    b = "2"
  }]

  lst = ["j", "k"]

  lifecycle {
    ignore_changes = ["require_new"]
  }
  tags = {
    yor_trace = "c4d0f13b-6307-46b2-9e6d-53ec681cf447"
  }
}
