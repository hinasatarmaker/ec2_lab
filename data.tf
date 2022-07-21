data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

   owners = ["099720109477"] # Canonical
}

data "aws_vpc" "talent_academy" {
  filter {
    name   = "tag:Name"
    values = ["lab_vpc"]
  }
}

data "aws_subnet" "public_subnet" {
  filter {
    name   = "tag:Name"
    values = ["Public"]
  }
}