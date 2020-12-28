view: gcp_billing_export_config {
  extends: [gcp_billing_export_core]
  extension: required

  measure: total_cost { # added to config so link params can be changed to user preference
    drill_fields: [gcp_billing_export_project.name, gcp_billing_export_service.description, sku_category, gcp_billing_export_sku.description, gcp_billing_export_usage.unit, gcp_billing_export_usage.total_usage, total_cost]
    link: {
      label: "{% if project_name_sort.top_10_projects._in_query %}Project Breakdown{% elsif service_name_sort.top_10_services._in_query %}Service Breakdown{% else %}{% endif %}"
      url: "{% if project_name_sort.top_10_projects._in_query %}/dashboards/block_gcp_billing::billing_by_project?Project={{ project_name_sort.top_10_projects._value | url_encode }}&Time Period=1 months{% elsif service_name_sort.top_10_services._in_query %}/dashboards/block_gcp_billing::billing_by_service?Service={{ service_name_sort.top_10_services._value | url_encode }}&Time Period=1 months{% else %}{% endif %}"
    }
  }
}

view: gcp_billing_export_credits_config {
  extends: [gcp_billing_export_credits_core]
  extension: required
}

view: gcp_billing_export_labels_config {
  extends: [gcp_billing_export_labels_core]
  extension: required
}

view: gcp_billing_export_project_config {
  extends: [gcp_billing_export_project_core]
  extension: required
}

view: gcp_billing_export_service_config {
  extends: [gcp_billing_export_service_core]
  extension: required
}

view: gcp_billing_export_sku_config {
  extends: [gcp_billing_export_sku_core]
  extension: required
}

view: gcp_billing_export_usage_config {
  extends: [gcp_billing_export_usage_core]
  extension: required
}

################## SORTING DERIVED TABLES ##################

view: project_name_sort_config {
  extends: [project_name_sort_core]
  extension: required
}

view: service_name_sort_config {
  extends: [service_name_sort_core]
  extension: required
}
