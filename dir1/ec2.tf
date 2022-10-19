resource "aws_instance" "dir1" {
  ami           = data.aws_ami.amazon-common-ami.id
  instance_type = "t3.micro"

  subnet_id = "subnet-0dd1964a2d73937cd"

  tags = {
    Name = "DIR-111"
  }
}