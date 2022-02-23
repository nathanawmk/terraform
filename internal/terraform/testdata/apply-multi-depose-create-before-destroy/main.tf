variable "require_new" {
  type = string
}

resource "aws_instance" "web" {
  // require_new is a special attribute recognized by testDiffFn that forces
  // a new resource on every apply
  require_new = var.require_new
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "f57e403b-069e-43f5-9c42-eb9ce2241db7"
  }
}
