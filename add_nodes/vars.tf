variable "access_key" {
    type = string
}

variable "secret_key" {
    type = string
}


variable "acc_owner" {
    type = string
}

variable "enddate" {
    type = string
    default = "permanent"
} 

variable "owner" {
    type = string
    default = "autosecure"
}

variable "ssh-key" {
    type = string
}

variable "new_node_count" {
    type = number
    default = 5
}

variable "volume_type" {
    type = string
    default = "gp2"
}

variable "volume_size" {
    type = number
    default = 600
}

variable "worker_instance" {
    type = string
    default = "m5.2xlarge"
}

variable "ami" {
    type = string
    default = "ami-04151dec0e904fda9"
}

variable "AWS_REGION" {
    type = string
    default = "ap-southeast-2"
}

variable "instance_profile" {
    type = string
}

variable "subnet" {
    type = string
}

variable "security_groups" {
    type = string
}