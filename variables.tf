variable "name" {
    default = "django-app"
    type = string
}

variable "ami" {
    default = "ami-020cba7c55df1f615"
    type = string
    description = "amazon machine image"  
}

variable "instance_type" {
    default = "t2.micro"
    type = string
}


variable "voulme_size" {
    default = 15
    type = number
}

variable "volume_type" {
    default = "gp3"
    type = string
}