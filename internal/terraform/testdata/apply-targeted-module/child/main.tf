resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "7a8265a0-871f-43f4-a82d-7dd9a4004aeb"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  tags = {
    yor_trace = "cc368edf-e856-4e71-881e-2e2384f1acab"
  }
}
