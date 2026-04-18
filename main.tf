provider "aws" {

    region = "us-east-1"
    alias = "nv"

}

provider "aws" {
    region = "ap-sounth-1"
    alias = "mum'
}

#Ec2 Instance

#Ec2 Instance in North Virginia

resource "aws_instances" "srv1-nv' {
    ami = "ami-02dfbd4ff395f2a1b"
    Instance_type = "t2.micro"
    key_name = "batch17a"
    provider = aws.nv

tag = {
    Name = "Lab Server-nv"
}
}

#Ec2 Instance in Mumbai

resource "aws_instances" "srv1-mum' {
    ami = "ami-0f559c3642608c138"
    Instance_type = "t2.micro"
    key_name = "b17mumabi"
    provider = aws.mum

tag = {
    Name = "Lab Server-mum"
}
}