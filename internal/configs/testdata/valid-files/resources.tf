resource "aws_security_group" "firewall" {
  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
    ignore_changes = [
      description,
    ]
  }

  connection {
    host = "127.0.0.1"
  }

  provisioner "local-exec" {
    command = "echo hello"

    connection {
      host = "10.1.2.1"
    }
  }

  provisioner "local-exec" {
    command = "echo hello"
  }
  tags = {
    yor_trace = "375bdb50-6533-4956-a286-35286afb423d"
  }
}

resource "aws_instance" "web" {
  ami = "ami-1234"
  security_groups = [
    "foo",
    "bar",
  ]

  network_interface {
    device_index = 0
    description  = "Main network interface"
  }

  depends_on = [
    aws_security_group.firewall,
  ]
  tags = {
    yor_trace = "9c35e9a6-2c0c-4c20-bdc1-6ba1a1b0d8d3"
  }
}
