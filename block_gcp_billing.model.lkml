connection: "@{CONNECTION_NAME}"

include: "*.view.lkml"         # include all views in this project
include: "//block-gcp-billing/*.view.lkml"
include: "//block-gcp-billing/*.explore.lkml"
include: "//block-gcp-billing/billing.dashboard.lookml" # include LookML dashboards in this project
include: "//block-gcp-billing/billing_by_project.dashboard.lookml"
include: "//block-gcp-billing/billing_by_service.dashboard.lookml"


# Customize explores here
explore: gcp_billing_export {
  extends: [gcp_billing_export_core]
}
