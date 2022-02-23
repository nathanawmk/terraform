# maps
resource "aws_instance" "foo" {
  for_each = {
    a = "thing"
    b = "another thing"
    c = "yet another thing"
  }
  num = "3"
  tags = {
    yor_trace = "c83cfe1d-0522-43e4-b706-bc2434bfcba5"
  }
}

# sets
resource "aws_instance" "bar" {
  for_each = toset([])
  tags = {
    yor_trace = "9a5d72c4-a6c9-41a5-ac08-5a8462b876d1"
  }
}
resource "aws_instance" "bar2" {
  for_each = toset(["z", "y", "x"])
  tags = {
    yor_trace = "f4a1d911-71a3-4bc7-8cc6-4dcd6c26b62a"
  }
}

# an empty map should generate no resource
resource "aws_instance" "baz" {
  for_each = {}
  tags = {
    yor_trace = "c67847dc-396c-4e14-9644-6987278caf9d"
  }
}

# references
resource "aws_instance" "boo" {
  foo = aws_instance.foo["a"].num
  tags = {
    yor_trace = "b1f544c6-32bd-4a61-bfda-82ef2cc22dc2"
  }
}

resource "aws_instance" "bat" {
  for_each = {
    my_key = aws_instance.boo.foo
  }
  foo = each.value
  tags = {
    yor_trace = "88256be4-5324-433c-ae32-a4d2afbd93dd"
  }
}

