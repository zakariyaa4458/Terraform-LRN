resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.wordpress_sg.id]
  user_data              = file("user_data.sh")

}


data "aws_vpc" "default" {
  default = true
}


resource "aws_security_group" "wordpress_sg" {

  name        = "wordpress_sg"
  description = "Allow HTTP and SSH"
  vpc_id      = data.aws_vpc.default.id

  # Allow HTTP from anywhere
  ingress {
    description = "HTTP from internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow SSH for my connection
  ingress {
    description = "SSH from me"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    description = "Allow all outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


}



