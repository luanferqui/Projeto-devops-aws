resource "aws_instance" "website_server" {
  ami                    = "ami-068c0051b15cdb816"
  instance_type          = "t2.micro"
  key_name               = "chave-site-prod"
  vpc_security_group_ids = [aws_security_group.website_sg.id]
  iam_instance_profile   = "ECR-EC2-Role"
  user_data = file("user_data.sh")

  tags = {
    Name        = "website-server"
    Provisioned = "Terraform"
    Cliente     = "Luan"
  }
}

## Security Group
resource "aws_security_group" "website_sg" {
  name   = "website-sg"
  vpc_id = "vpc-0a28cca3b07bac9db"
  tags = {
    Name        = "website-sg"
    Provisioned = "Terraform"
    Cliente     = "Luan"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.website_sg.id
  cidr_ipv4         = "200.6.82.61/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.website_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.website_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.website_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = -1
}

