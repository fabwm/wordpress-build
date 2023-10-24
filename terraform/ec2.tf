resource "aws_instance" "wordpress" {
  ami             = "ami-053b0d53c279acc90"
  instance_type   = "t3.large"
  key_name        = aws_key_pair.terraform-key.key_name
  user_data       = <<-EOF
                #!/bin/bash
                sudo yum update -y
                EOF
  security_groups = ["labs"]
  tags = {
    Name = "wordpress"
  }
}
