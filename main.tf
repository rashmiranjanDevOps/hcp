provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0317b0f0a0144b137" 
  instance_type = "t2.micro"

  tags = {
    Name = "Bapi-Terraform-EC2"
  }
}
output "public_ip" {
  value = aws_instance.my_ec2.public_ip
}
