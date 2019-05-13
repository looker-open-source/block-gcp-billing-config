connection: "@{CONNECTION_NAME}"

include: "*.view.lkml"         # include all views in this project
include: "//block-gcp-billing/*.view.lkml"
include: "//block-gcp-billing/*.explore.lkml"
include: "//block-gcp-billing/billing.dashboard.lookml"  # include all dashboards in this project

# Customize explores here
explore: gcp_billing_export {
  extends: [gcp_billing_export_core]
}
