resource "aws_instance" "foo" {
  count   = 2
  compute = "ip.#"
  tags = {
    yor_trace = "95fe3342-0cec-4692-94d5-152b24c64127"
  }
}

resource "aws_instance" "bar" {
  count = 1
  foo   = "${aws_instance.foo.*.ip[count.index]}"
  tags = {
    yor_trace = "d469a8ab-b808-4dcf-828e-e069ec9367b5"
  }
}
