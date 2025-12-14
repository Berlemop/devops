output "api_endpoint" {
  description = "API Gateway endpoint URL"
  value       = "${aws_api_gateway_deployment.deployment.invoke_url}/hello"
}

output "api_base_url" {
  description = "API Gateway base URL (without path)"
  value       = "${aws_api_gateway_deployment.deployment.invoke_url}"
}

output "lambda_function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.hello_world.function_name
}

output "lambda_function_arn" {
  description = "ARN of the Lambda function"
  value       = aws_lambda_function.hello_world.arn
}