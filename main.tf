
resource "aws_instance" "vm-user1" {
    ami = "ami-0435fcf800fb5418d"
    instance_type = "t3.micro"

    tags = {
      Name = "vm-user1"
    }
}

resource "aws_ebs_volume" "ebs-exten" {
    availability_zone = "ap-southeast-1a"
    size = 10
}