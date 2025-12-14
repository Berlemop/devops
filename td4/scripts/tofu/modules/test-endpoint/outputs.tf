output "status_code" {
  value       = data.http.test_endpoint.status_code
  description = "HTTP status code returned by the endpoint"
}

output "response_body" {
  value       = data.http.test_endpoint.response_body
  description = "Response body from the endpoint"
}
