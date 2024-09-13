(* terraform { 
  cloud { 
    hostname = "jjtfe.ddimtech.click" 
    organization = "test" 

    workspaces { 
      name = "dest-workspace" 
    } 
  } 
} *)

provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0023481579962abd4"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}


