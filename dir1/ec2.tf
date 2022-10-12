resource "aws_instance" "dir1" {
  ami           = data.aws_ami.amazon-common-ami.id
  instance_type = "t3.micro"

  subnet_id = "subnet-0f0d20e44d0cf905a"

  tags = {
    Name = "DIR-111"
  }
}