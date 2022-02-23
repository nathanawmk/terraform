variable "string" {
  default = "foo"
  type    = string
}

variable "list" {
  default = []
  type    = list(string)
}

variable "map" {
  default = {}
  type    = map(string)
}

resource "aws_instance" "bar" {
  string = var.string
  list   = var.list
  map    = var.map
  tags = {
    yor_trace = "6e9557a5-6687-4fe4-b055-6636ee4c26d6"
  }
}
