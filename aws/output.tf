output "self" {
  description = "Runtime environment"
  value = {
    workspace   = terraform.workspace
    last_update = timestamp()
    account_id  = data.aws_caller_identity.current.account_id
    region      = data.aws_region.current.name
    user_id     = substr(data.aws_caller_identity.current.user_id, 0, 21)
    web_console = format("https://%s.signin.aws.amazon.com/console", data.aws_caller_identity.current.account_id)
  }
}