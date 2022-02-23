resource "aws_instance" "web" {
  require_new = "ami-new"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "ed29571b-6bfb-4eb9-9ed8-8974a73efb5f"
  }
}

resource "aws_instance" "lb" {
  instance = aws_instance.web.id
  tags = {
    yor_trace = "22ab1719-83bb-47e6-b8c1-88f4afca53c7"
  }
}
