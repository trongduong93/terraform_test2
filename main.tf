
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

resource "aws_volume_attachment" "ebs-attach" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.ebs-exten.id
  instance_id = aws_instance.vm-user1.id
}