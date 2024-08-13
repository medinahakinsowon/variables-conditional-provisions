



resource "aws_instance" "my_new_instance" {

  count         = var.boolean_var ? 1 : 0
  ami           = "ami-0ae8f15ae66fe8cda"
  instance_type = "t2.micro"

  tags = {
    Name = "Medinat"
    Env  = "Dev"
    Date = "Thursday 8th Aug 2024"
  }
}


resource "aws_instance" "my_new_instance_34" {

  count         = var.number_var
  ami           = "ami-0ae8f15ae66fe8cda"
  instance_type = "t2.micro"

  tags = {
    Name = "Medinat"
    Env  = "Dev"
    Date = "Thursday 8th Aug 2024"
  }
}


resource "aws_instance" "my_new_instance_39" {

  count = var.env == "Prod" ? 1 : 0

  ami           = "ami-0ae8f15ae66fe8cda"
  instance_type = "t2.micro"

  tags = {
    Name = "Medinat"
    Env  = "Dev"
    Date = "Thursday 8th Aug 2024"
  }
}



