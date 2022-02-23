resource "aws_instance" "foo" {
  for_each = toset(["a", "b", "c"])
  foo      = "number ${each.value}"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    yor_trace = "500ebdbe-70d6-46bb-a47f-c5afaad3a88f"
  }
}
