resource "aws_instance" "tb" {
  ami           = "ami-0f9d9a251c1a44858"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.TF_SG.name]
  key_name = "tf_key"
  user_data = file("script.sh")

  tags = {
    Name = "Terraform EC2"
  }
}
