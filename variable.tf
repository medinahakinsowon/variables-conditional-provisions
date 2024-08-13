#variable for our ec2 resource block


variable "ami" {
  type        = string
  description = "This is the variable for our AMI ec2 instance"
  default     = "ami-0ae8f15ae66fe8cda"
}


variable "instance_type" {
  type        = string
  description = "This is the size of our image in cpus"
  default     = "t2.medium"
}

#variable for tags

variable "tags" {
  type = map(string)
  default = {
    Name       = "webserver"
    Env        = "dev"
    Owner      = "medinat"
    Created_by = "Codemed"
  }

}
/*
#list variable type
variable "bucket_names" {
  description = "lists of s3 bucket names to create"
  type        = list(string)
  default     = ["buckerhoo", "buckethoo23", "bucket3hoo34"]
}
*/

#boolean variables

variable "boolean_var" {
  type    = bool
  default = false
}


#number variable

variable "number_var" {
  type    = number
  default = 10
}

#conditional variable

variable "env" {
  type    = string
  default = "Prod"

}

#list of object for for_each demo

variable "servers" {
  type = list(object({
    name          = string
    instance_type = string
    ami_id        = string
  }))

  default = [
    {
      name          = "web_server"
      instance_type = "t2.micro"
      ami_id        = "ami-0c55b159cbfafe1f0"
    },
    {
      name          = "db_server"
      instance_type = "t2.medium"
      ami_id        = "ami-0c55b159cbfafe1f0"
    },
    {
      name          = "cache_server"
      instance_type = "t2.small"
      ami_id        = "ami-0c55b159cbfafe1f0"
    }
  ]
}



#map of object 
variable "server_map" {
  type = map(object({
    instance_type = string
    ami_id        = string
    tags          = map(string)
  }))

  default = {
    "web_server" = {
      instance_type = "t2.micro"
      ami_id        = "ami-0c55b159cbfafe1f0"
      tags          = {
        Name = "Web Server"
        Env  = "Production"
      }
    },
    "db_server" = {
      instance_type = "t2.medium"
      ami_id        = "ami-0c55b159cbfafe1f0"
      tags          = {
        Name = "Database Server"
        Env  = "Production"
      }
    },
    "cache_server" = {
      instance_type = "t2.small"
      ami_id        = "ami-0c55b159cbfafe1f0"
      tags          = {
        Name = "Cache Server"
        Env  = "Production"
      }
    }
  }
}




#set of string variable for for_each loop

variable "bucket_names" {
  type = set(string)
  description = "set of s3 bucket names"
  default = ["wearethere", "wearenow", "seethemnow"]

}


