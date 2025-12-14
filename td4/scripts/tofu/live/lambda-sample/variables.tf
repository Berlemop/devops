variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-west-3"  # Paris region
}

variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "hello-world-lambda"
}

variable "stage_name" {
  description = "API Gateway deployment stage name"
  type        = string
  default     = "test"
}
