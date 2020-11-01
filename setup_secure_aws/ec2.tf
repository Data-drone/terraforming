resource "aws_instance"  "bastion"  {
    ami = var.ami
    instance_type = "m5a.large"
    key_name = var.ssh-key

    root_block_device {
        volume_type           = var.volume_type
        volume_size           = var.volume_size
        delete_on_termination = true
    }

    tags = {
        Name = join("-", [var.owner, "bastion"])
        owner = var.acc_owner
        enddate = var.enddate
    }

    subnet_id = aws_subnet.mainsubnet.id

    security_groups = [aws_security_group.sec-clus-sg.id]

}

resource "aws_eip" "lb" {
  instance = aws_instance.bastion.id
  vpc      = true
}