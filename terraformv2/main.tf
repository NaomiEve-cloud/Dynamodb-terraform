provider "aws" {
  region     = "us-east-1"
  
}

resource "aws_dynamodb_table" "guest" {
  name           = "studentTableTerraform"
  billing_mode   = "PROVISIONED"
  read_capacity  = 10
  write_capacity = 10
  hash_key = "id"
  
  attribute {
    name = "id"
    type = "S"
  } 

}

resource "aws_dynamodb_table_item" "insert_item1" {
  table_name = aws_dynamodb_table.guest.name
  hash_key   = aws_dynamodb_table.guest.hash_key
  item       = <<ITEM
{
  "id": {"S": "001"},
  "email": {"S": "eva.naomi@azubiafrica.org"},
  "number": {"S": "011474254"},
  "country": {"S": "Kenya"},
  "gender": {"S": "Female"},
  "name": {"S": "Eva Naomi"}
}
ITEM

}

resource "aws_dynamodb_table_item" "insert_item2" {
  table_name = aws_dynamodb_table.guest.name
  hash_key   = aws_dynamodb_table.guest.hash_key
  item       = <<ITEM
{
  "id": {"S": "002"},
  "email": {"S": "Christopher@azubiafrica.org"},
  "number": {"S": "011548961"},
  "country": {"S": "Kenya"},
  "gender": {"S": "male"},
  "name": {"S": "Christopher Oyongo"}
}
ITEM

}

resource "aws_dynamodb_table_item" "insert_item3" {
  table_name = aws_dynamodb_table.guest.name
  hash_key   = aws_dynamodb_table.guest.hash_key
  item       = <<ITEM
{
  "id": {"S": "003"},
  "email": {"S": "Uwimana.alphonsine@azubiafrica.org"},
  "number": {"S": "250555444"},
  "country": {"S": "Rwanda"},
  "gender": {"S": "Female"},
  "name": {"S": "Uwimana alphonsine"}
}
ITEM

}

  


    
    
  
  
