# This test verifies that the provider local name, local config and fqn map
# together properly when the local name does not match the type.

terraform {
  required_providers {
    arbitrary = {
      source = "hashicorp/aws"
    }
  }
}

# hashicorp/test has required provider config attributes. This "arbitrary"
# provider configuration block should map to hashicorp/test.
provider "arbitrary" {
  required_attribute = "bloop"
}

resource "aws_instance" "test" {
  provider = "arbitrary"
  tags = {
    yor_trace = "a943c877-7dcc-4cc0-8754-b4b8edd96e69"
  }
}
