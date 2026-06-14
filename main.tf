# Step 1: Create the DynamoDB Table with 3 GSIs
resource "aws_dynamodb_table" "chef_inventory" {
  name         = "chef_inventory"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "AssetID"

  # All keys used in hash_key or GSIs must be explicitly typed here
  attribute {
    name = "AssetID"
    type = "N"
  }

  attribute {
    name = "AssetName"
    type = "S"
  }

  attribute {
    name = "age"
    type = "N"
  }

  attribute {
    name = "Hardware"
    type = "S"
  }

  # Global Secondary Index 1
  global_secondary_index {
    name            = "AssetNameIndex"
    hash_key        = "AssetName"
    projection_type = "ALL"
  }

  # Global Secondary Index 2
  global_secondary_index {
    name            = "AgeIndex"
    hash_key        = "age"
    projection_type = "ALL"
  }

  # Global Secondary Index 3
  global_secondary_index {
    name            = "HardwareIndex"
    hash_key        = "Hardware"
    projection_type = "ALL"
  }
}

# Step 2: Upload Sparse Data Items with Implicit Dependencies
resource "aws_dynamodb_table_item" "upload_1" {
  table_name = aws_dynamodb_table.chef_inventory.name
  hash_key   = aws_dynamodb_table.chef_inventory.hash_key

  item = jsonencode({
    AssetID   = { N = "1" }
    AssetName = { S = "laptop" }
  })
}

resource "aws_dynamodb_table_item" "upload_2" {
  table_name = aws_dynamodb_table.chef_inventory.name
  hash_key   = aws_dynamodb_table.chef_inventory.hash_key

  item = jsonencode({
    AssetID   = { N = "2" }
    AssetName = { S = "printer" }
    Hardware  = { S = "true" }
  })
}

resource "aws_dynamodb_table_item" "upload_3" {
  table_name = aws_dynamodb_table.chef_inventory.name
  hash_key   = aws_dynamodb_table.chef_inventory.hash_key

  item = jsonencode({
    AssetID   = { N = "3" }
    AssetName = { S = "monitor" }
    age       = { N = "2" }
    Hardware  = { S = "true" }
  })
}
