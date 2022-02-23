resource "aws_instance" "shared" {
  tags = {
    yor_trace = "a330c454-e531-4539-b6fe-bf80107c2b0d"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.shared.id}"
}
