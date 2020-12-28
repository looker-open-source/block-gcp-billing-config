include: "*.view.lkml"         # include all views in this project


# Customize explores here
explore: gcp_billing_export_config {
  extends: [gcp_billing_export_core]
  extension: required
}
