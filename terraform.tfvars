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
    schema             =  "autotelemetry.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "components",
    schema             =  "components.json",
    labels = {
      env      = "devops"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "dealerdata",
    schema             =  "dealerdata.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "errorcodes",
    schema             =  "errorcodes.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "parts",
    schema             =  "parts.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "predict_results",
    schema             =  "predict_results.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  },
  {
    table_id           = "vindevicemapping",
    schema             =  "vindevicemapping.json",
    labels          = {
      env      = "dev"
      billable = "true"
      owner    = "arpitgup"
    }
  }
]
