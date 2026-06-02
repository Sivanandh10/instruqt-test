resource "lab" "main" {
  title       = "SIVA-Testing"
  description = "Testing the description"

  layout = resource.layout.single_panel

  settings {
    theme = "original"

    timelimit {
      duration   = "25m"
      show_timer = true
    }

    idle {
      enabled      = true
      timeout      = "5m"
      show_warning = true
    }

    controls {
      show_stop = true
    }
  }
  content {
    chapter "__default" {
      title = "Default"
      page "page-1-" {
        title     = "page 1 "
        reference = resource.page.page-1-
      }
    }
  }
}
