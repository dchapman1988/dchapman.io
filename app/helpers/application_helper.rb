module ApplicationHelper
  def page_load_time
    "Page Rendered in #{sprintf('%.3f', (Time.now.usec - @start_time).abs / 1000000.0)} seconds."
  end
end
