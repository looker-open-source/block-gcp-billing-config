project_name: "block-gcp-billing-config"

constant: CONNECTION_NAME {
  value: "gcp_logging"
}

constant: SCHEMA_NAME {
  value: "gcp_logs"
}

# Looks like it should just be a single table, so no _* notation
constant: BILLING_EXPORT_TABLE_NAME {
  value: "gcp_billing_export_v1_002831_A42942_C36931"
}

local_dependency: {
  project: "block-gcp-billing"
}
