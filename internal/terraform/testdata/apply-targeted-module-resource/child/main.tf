resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "b10f73e9-2775-4644-97ad-c98afddd015f"
  }
}

resource "aws_instance" "bar" {
  num = "2"
  tags = {
    yor_trace = "a57fd8e8-6635-451b-8695-fea0e09b4f3b"
  }
}
