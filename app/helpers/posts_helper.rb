module PostsHelper
  def render_markdown(md_text_string)
    BlueCloth.new(md_text_string).to_html
  end

  def time_of_post(time_obj)
    date = time_obj.strftime("%m/%d/%Y")
    time = time_obj.strftime("%k:%M")
    "#{date} @ #{time}"
  end
end
