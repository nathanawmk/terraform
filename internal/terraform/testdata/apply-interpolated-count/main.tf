variable "instance_count" {
  default = 1
}

resource "aws_instance" "test" {
  count = "${var.instance_count}"
  tags = {
    yor_trace = "37e0a500-15dd-4083-98d8-6a74f75d2ec0"
  }
}

resource "aws_instance" "dependent" {
  count = "${length(aws_instance.test)}"
  tags = {
    yor_trace = "449febc4-a90c-4a05-8525-dc00cf4089db"
  }
}
