variable "PROJECT" {
  description = "The name of the project."
}

variable "REGION" {
  description = "The region where resources will be deployed."
}

variable "ENV" {
  description = "The environment (e.g. dev, qa, prod)."
}

variable "APP_NAME" {
  description = "The name of the application."
}

variable "TARGET_TENANT_ID" {
  description = "The tenant ID of the target environment."
}

variable "TARGET_SUBSCRIPTION_ID" {
  description = "The subscription ID of the target environment."
}

variable "SP_CLIENT_ID" {
  description = "The client ID for Service Principal."
}

variable "SP_SECRET" {
  description = "The client secret for Service Principal."
}