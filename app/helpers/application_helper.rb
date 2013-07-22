module ApplicationHelper
  def page_load_time
    "Page Rendered in #{sprintf('%.3f', (Time.now.usec - @start_time).abs / 1000000.0)} seconds."
  end

  def current_url
    url_for(:only_path => false)
  end
end
