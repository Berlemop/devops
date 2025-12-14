run "deploy" {
  command = apply
}

run "validate" {
  command = apply
  
  module {
    source = "../../modules/test-endpoint"
  }
  
  variables {
    endpoint = run.deploy.api_endpoint
  }
  
  assert {
    condition     = output.status_code == 200
    error_message = "Expected status code 200, but got: ${output.status_code}"
  }
  
  assert {
    condition     = output.response_body == "Hello, World!"
    error_message = "Expected 'Hello, World!' but got: ${output.response_body}"
  }
}

run "validate_404" {
  command = apply
  
  module {
    source = "../../modules/test-endpoint"
  }
  
  variables {
    endpoint = "${run.deploy.api_base_url}/nonexistent"
  }
  
  assert {
    condition     = output.status_code == 403
    error_message = "Expected status code 403 for non-existent endpoint, but got: ${output.status_code}"
  }
}