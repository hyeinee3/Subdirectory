resource "aws_instance" "dir1" {
  ami           = data.aws_ami.amazon-common-ami.id
  instance_type = "t3.micro"

  subnet_id = "subnet-1af11756"

  tags = {
    Name = "DIR-111"
  }
}
