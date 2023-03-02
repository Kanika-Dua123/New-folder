variable "instance_type" {
    type = string 
}

variable "tags" {
    type = map(any)
}

variable "ami" {
    type = string
}