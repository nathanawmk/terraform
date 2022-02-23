resource "aws_instance" "foo" {
  tags = {
    yor_trace = "c66666ad-bb0c-4aaf-9db3-4642ee563c9e"
  }
}

output "instance_id" {
  # Even though we're targeting just the resource above, this should still
  # be populated because outputs are implicitly targeted when their
  # dependencies are
  value = "${aws_instance.foo.id}"
}
