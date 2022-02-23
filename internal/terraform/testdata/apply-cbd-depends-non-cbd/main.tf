resource "aws_instance" "foo" {
  require_new = "yes"
  tags = {
    yor_trace = "c17c7c60-faeb-48bc-931c-57d31f70f09c"
  }
}

resource "aws_instance" "bar" {
  require_new = "yes"
  value       = "${aws_instance.foo.id}"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "c05b37e6-cc37-4b17-b1a5-d7bcb123f60f"
  }
}
