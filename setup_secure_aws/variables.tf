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

variable "ami" {
    type = string
    default = "ami-0e8348dafd5041130"
}

variable "AWS_REGION" {
    type = string
    default = "ap-southeast-2"
}

variable "ingress_cidr_blocks" {
    type = list(string)
    default = ["74.217.76.96/27"]
}

variable "ssh-key" {
    type = string
}

variable "volume_type" {
    type = string
    default = "gp2"
}

variable "volume_size" {
    type = number
    default = 600
}
