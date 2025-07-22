resource "azurerm_monitor_data_collection_rule" "this" {
  name                = var.dcr_name
  location            = var.location
  resource_group_name = var.resource_group_name

  kind = "Linux" # or "Windows" depending on your use case

  data_flow {
    streams      = ["Microsoft-Perf"]  # Can include: "Microsoft-Event", "Microsoft-InsightsMetrics", etc.
    destinations = ["log_analytics"]
  }

  destinations {
    log_analytics {
      name                = "log_analytics"
      workspace_resource_id = var.log_analytics_workspace_id
    }
  }

  data_sources {
    performance_counter {
      name           = "perf"
      streams        = ["Microsoft-Perf"]
      sampling_frequency_in_seconds = 60
      counter_specifiers = ["\\Processor(_Total)\\% Processor Time"]
      computer_name    = ""
    }
  }

  tags = var.tags
}
