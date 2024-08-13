


# Loop through the server_names to create EC2 instances using list object
resource "aws_instance" "server_names" {
  for_each = { for idx, server in var.servers : idx => server }

  instance_type = each.value.instance_type
  ami           = each.value.ami_id

  tags = {
    Name = each.value.name
  }
}


# Loop through the server_map to create EC2 instances using map object
resource "aws_instance" "server" {
  for_each = var.server_map

  instance_type = each.value.instance_type
  ami           = each.value.ami_id
  tags          = each.value.tags
}
