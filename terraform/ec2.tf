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

# resource "aws_instance" "test" {
#   ami             = "ami-026ebd4cfe2c043b2"
#   instance_type   = "t2.micro"
#   key_name        = aws_key_pair.terraform-key.key_name
#   user_data       = <<-EOF
#                 #!/bin/bash
#                 sudo yum update -y
#                 EOF
#   security_groups = ["labs"]
#   tags = {
#     Name = "test"
#   }
# }