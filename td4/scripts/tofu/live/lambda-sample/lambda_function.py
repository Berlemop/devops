import json

def lambda_handler(event, context):
    """
    Simple Lambda function that returns Hello, World!
    """
    return {
        'statusCode': 200,
        'headers': {
            'Content-Type': 'text/plain'
        },
        'body': 'Hello, World!'
    }
