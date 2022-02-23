terraform {
  required_providers {
    boop = {
      source = "foobar/beep" # intentional mismatch between local name and type
    }
  }
}

resource "aws_instance" "no_count" {
  tags = {
    yor_trace = "f6e50049-1e9e-4c81-b76a-7c55bdd67ca0"
  }
}

resource "aws_instance" "count" {
  count = 1
  tags = {
    yor_trace = "3a6804d4-6cf4-4784-bf3b-cca8fd677bcd"
  }
}

resource "boop_instance" "yep" {
}

resource "boop_whatever" "nope" {
}

data "beep" "boop" {
}
