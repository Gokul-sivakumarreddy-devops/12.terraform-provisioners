resource "aws_instance" "web" {
  ami           = "ami-081609eef2e3cc958" #devops-practice
  instance_type = "t2.micro"

  
  tags = {
    Name = "provisioner"
  }

  provisioner "local-exec" {
  command = "echo The server's IP address is ${self.private_ip}"
  }

}
