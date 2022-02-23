resource "aws_instance" "web" {
  lifecycle {
    ignore_changes = ["*", "foo"]
  }
  tags = {
    yor_trace = "3f2bdadb-97c9-465d-a45c-bac85852fa22"
  }
}
