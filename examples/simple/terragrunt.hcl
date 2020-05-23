remote_state {
  backend = "s3"
  config = {
    region         = "eu-central-1"
    key            = "ai-idx-api-gateway-test.tfstate"
    bucket         = "terraform-state-bucket-133301490443"
    kms_key_id     = "alias/terraform-state-kms-key"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true

    profile = "hapag-dev"
  }
}
