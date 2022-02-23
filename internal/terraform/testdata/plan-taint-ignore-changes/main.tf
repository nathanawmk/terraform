resource "aws_instance" "foo" {
  vars = "foo"

  lifecycle {
    ignore_changes = ["vars"]
  }
  tags = {
    yor_trace = "10f839fa-4ffb-48cb-a4ce-140af1d8a5f7"
  }
}
