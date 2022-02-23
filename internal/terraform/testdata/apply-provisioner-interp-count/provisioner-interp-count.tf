variable "num" {
  default = 3
}

resource "aws_instance" "a" {
  count = var.num
  tags = {
    yor_trace = "3f97a87a-4ab5-40f8-bb78-f1f87a4abdcf"
  }
}

resource "aws_instance" "b" {
  provisioner "local-exec" {
    # Since we're in a provisioner block here, this expression is
    # resolved during the apply walk and so the resource count must
    # be known during that walk, even though apply walk doesn't
    # do DynamicExpand.
    command = "echo ${length(aws_instance.a)}"
  }
  tags = {
    yor_trace = "3a0f1a24-7255-48f5-97f6-1f5c75ca07fc"
  }
}
