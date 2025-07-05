resource "aws_key_pair" "new_instance" {
    key_name = "${var.name}-key"
    public_key = "django-key.pub"
}


resource "aws_instance" "new_instance" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = aws_subnet.new_subnet.id
    security_groups = [ aws_security_group.new_security.name ]
    vpc_security_group_ids = [ aws_vpc.new_vpc.id ]
    associate_public_ip_address = true 

    root_block_device {
      volume_type = var.volume_type
      volume_size = var.voulme_size
    }
    
}