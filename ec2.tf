
# ec2 servers

resource "aws_instance" "server1" {
    instance_type = "t3.micro"
    ami = "ami-0f319f7ad9a109982"
    user_data = file("setup.sh")
    subnet_id = aws_subnet.private1.id
    vpc_security_group_ids = [aws_security_group.web_sg.id]
    tags = {
        Name = "webserver-1"
        env = "Dev"
    }
}

resource "aws_instance" "serve2" {
    instance_type = "t3.micro"
    ami = "ami-0f319f7ad9a109982"
    user_data = file("setup.sh")
    subnet_id = aws_subnet.private2.id
    vpc_security_group_ids = [aws_security_group.web_sg.id]
    tags = {
        Name = "webserver-2"
        env = "Dev"
    }
}