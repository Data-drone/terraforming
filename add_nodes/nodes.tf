provider "aws" {
    region = var.AWS_REGION
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_instance"  "node"  {
    ami = var.ami 
    instance_type = var.worker_instance
    iam_instance_profile = var.instance_profile 
    key_name = var.ssh-key

    count = var.new_node_count

    root_block_device {
        volume_type           = var.volume_type
        volume_size           = var.volume_size
        delete_on_termination = true
    }

    tags = {
        Name = join("-", [var.owner, "workerBoost"])
        owner = var.acc_owner
        enddate = var.enddate
    }

    subnet_id = var.subnet

    security_groups = [var.security_groups]

}