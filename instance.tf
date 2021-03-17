resource "aws_instance" "Goflow_Processor" {
    ami = "ami-011cdd192f5c89ec5"
#    count = 6
    instance_type = "c6g.large"
    subnet_id="subnet-04eb785d28fcefd0a"
    key_name = "francium"

tags = {
  "key" = "Goflow_Processor-2"
}

}
resource "aws_security_group" "goflow_processor" {
    vpc_id = "vpc-0c8b7a7bdb63ead90"
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
 
}
#resource "aws_key_pair" "francium" {
  #key_name   = "francium"
 # public_key = file(var.PATH_TO_PUBLIC_KEY)
#}

#variable "PATH_TO_PRIVATE_KEY" {
 # default = "francium"
#}

#variable "PATH_TO_PUBLIC_KEY" {
 # default = "francium.pem"
#}
