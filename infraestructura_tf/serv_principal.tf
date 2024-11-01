provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "servidor_principal" {
    
    ami = var.ubuntu
    instance_type = var.free_instance
    vpc_security_group_ids = [aws_security_group.sg_principal.id]
    associate_public_ip_address = true
    key_name = "principal"
    tags = {
        Name= "DonJoseMachine"
    }
    user_data = <<-EOF
                    #!/bin/bash
                    sudo apt update 
                    sudo apt upgrade 
                    sudo apt-get install -y docker docker-compose
                    mkdir /home/ubuntu/donjose
                    python -m venv /home/ubuntu/donjose

                    EOF

    
}


resource "aws_security_group" "sg_principal" {
    ingress  {
        description = "http conection"
        cidr_blocks = ["0.0.0.0/0"]
        from_port = 80
        to_port = 80
        protocol = "tcp"
        
    }
    ingress {
        description = "ssh conection "
        cidr_blocks = ["0.0.0.0/0"]
        from_port = 22
        to_port = 22
        protocol = "tcp"
    }
    egress {
        cidr_blocks = ["0.0.0.0/0"]
        to_port = 0
        from_port = 0
        protocol = "-1"
    }
  
}

output "ip_publica" {
    value = aws_instance.servidor_principal.public_ip
  
}
