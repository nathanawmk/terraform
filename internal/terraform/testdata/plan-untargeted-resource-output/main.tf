module "mod" {
  source = "./mod"
}


resource "aws_instance" "c" {
  name = "${module.mod.output}"
  tags = {
    yor_trace = "d213b69b-490c-43e1-bce2-66edcee747b4"
  }
}
