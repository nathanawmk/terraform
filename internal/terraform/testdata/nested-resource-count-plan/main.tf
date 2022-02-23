resource "aws_instance" "foo" {
  count = 2
  tags = {
    yor_trace = "a3cbf37c-3d52-4c39-9937-38c27d505b10"
  }
}

resource "aws_instance" "bar" {
  count = "${length(aws_instance.foo.*.id)}"
  tags = {
    yor_trace = "e27a97ef-6e28-433a-b26c-4cf5d7676020"
  }
}

resource "aws_instance" "baz" {
  count = "${length(aws_instance.bar.*.id)}"
  tags = {
    yor_trace = "0ffbe503-96fd-4575-92b9-731c45560379"
  }
}
