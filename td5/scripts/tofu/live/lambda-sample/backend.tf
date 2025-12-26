terraform {
  backend "s3" {
    # TODO: fill in your own bucket name here!
    bucket         = "ismahamat-devops-lab4-state" 
    key            = "td5/tofu/live/lambda-sample"       
    region         = "us-east-2"
    encrypt        = true
    # TODO: fill in your own DynamoDB table name here!
    dynamodb_table = "ismahamat-devops-lab4-state" 
  }
}