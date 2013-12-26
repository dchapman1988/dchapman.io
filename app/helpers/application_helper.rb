require 'coderay'
module ApplicationHelper
  def coderay(text)
    text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
      lang = $2 || 'ruby'
      CodeRay.scan($3, lang).div(:css => :class)
    end

  end

  def page_load_time
    auth_link = link_to %(&epsilon;).html_safe, new_user_session_path
    "Page Rendered in #{sprintf('%.3f', (Time.now.usec - @start_time).abs / 1000000.0)}&plusmn;#{auth_link} seconds."
  end

  def current_url
    url_for(:only_path => false)
  end
  
  def page_title
    @page_title.present? ? "#{@page_title} | dchapman.io" :  "David Chapman | dchapman.io"
  end
end
