module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "be420e61-c3c6-4287-9ab0-0a1aabb57601"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "82ba40df-dc72-4b7b-a487-042ec338ef22"
  }
}
