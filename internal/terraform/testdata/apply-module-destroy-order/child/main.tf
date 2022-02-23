resource "aws_instance" "a" {
  id = "a"
  tags = {
    yor_trace = "38873337-5ec1-48bb-9e00-3fcbd639e035"
  }
}

output "a_output" {
  value = "${aws_instance.a.id}"
}
