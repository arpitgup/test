#Update with the project you are deploying module to
project_id = "a-test-project-318507"

#Time that
time_partitioning = "DAY"

#The labels for dataset being deployed
dataset_labels = {
  env   = "dev"
  billable   = "true"
  owner = "arpitgup"
}

#List of the tables that you are
tables = [
  {
    table_id           = "autotelemetry",
    schema             =  "schema_autotelemetry.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "components",
    schema             =  "schema_components.json",
    labels = {
      env      = "devops"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "dealerdata",
    schema             =  "schema_dealerdata.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "errorcodes",
    schema             =  "schema_errorcodes.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "parts",
    schema             =  "schema_parts.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "predict_results",
    schema             =  "schema_predict_results.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "vindevicemapping",
    schema             =  "schema_vindevicemapping.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  }
]
