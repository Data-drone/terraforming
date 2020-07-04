variable "tag_name" {
    description = "Prefix for resources"
    default = "cdh"
}

variable "key_name" {
    description = "name of key in aws account"
}

variable "key_path" {
    description = "path to key file"
}

variable "region" {
    description = "region to launch"
}

variable "server" {
    description = "num nodes to start"
    default = 1
}

