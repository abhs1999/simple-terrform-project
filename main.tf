provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type


  tags = {
    Name = "Terraform-EC2"
  }
}
