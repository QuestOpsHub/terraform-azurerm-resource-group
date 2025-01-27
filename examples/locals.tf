locals {
  resource_suffix = "qoh-prod-cus"
  tags = {
    "environment"        = "production"
    "region"             = "centralus"
    "cost_center"        = "6001"
    "reason"             = "JIRA-12345"
    "created_by"         = "veera.bhadra"
    "project"            = "questopshub"
    "owner"              = "veera.bhadra"
    "team"               = "infrastructure"
    "creation_timestamp" = timestamp()
  }
}