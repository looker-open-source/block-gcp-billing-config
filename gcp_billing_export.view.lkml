include: "//block-gcp-billing/*.view.lkml"

view: gcp_billing_export {
  extends: [gcp_billing_export_core]
}

view: gcp_billing_export_credits {
  extends: [gcp_billing_export_credits_core]
}

view: gcp_billing_export_labels {
  extends: [gcp_billing_export_labels_core]
}

view: gcp_billing_export_project {
  extends: [gcp_billing_export_project_core]
}

view: gcp_billing_export_service {
  extends: [gcp_billing_export_service_core]
}

view: gcp_billing_export_sku {
  extends: [gcp_billing_export_sku_core]
}

view: gcp_billing_export_usage {
  extends: [gcp_billing_export_usage_core]
}

################## SORTING DERIVED TABLES ##################

view: project_name_sort {
  extends: [project_name_sort_core]
}

view: service_name_sort {
  extends: [service_name_sort_core]
}
