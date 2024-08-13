


/*
resource "aws_s3_bucket" "codemed23456" {

  count  = length(var.bucket_names)
  bucket = var.bucket_names[count.index]

  tags = {
    Name        = "bucket-${var.bucket_names[count.index]}"
    Environment = "Dev"
  }
}
*/
/*
resource "aws_s3_bucket" "codemed23460" {

  for_each = toset(var.bucket_names)
  bucket   = each.value

  tags = {
    Name        = "bucket"
    Environment = "Dev"
  }
}
*/

resource "aws_s3_bucket" "wearenow" {

  for_each = var.bucket_names
  bucket = each.value

 tags = {
  Name  = "Bucket"
  Environment = "Dev"
  }

}








