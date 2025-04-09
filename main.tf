
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0abcdef1234567890"  # Replace with your custom/required AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }

(*   metadata_options {
    http_tokens               = "required"
    http_put_response_hop_limit = 2
    http_endpoint             = "enabled"
  }
} *)
