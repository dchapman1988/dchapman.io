module PostsHelper
  def render_markdown(md_text_string)
    BlueCloth.new(md_text_string).to_html
  end

  def time_of_post(time_obj)
    date = time_obj.strftime("%m/%d/%Y")
    time = time_obj.strftime("%k:%M")
    distance = distance_of_time_in_words_to_now(time_obj)
    "#{date} @ #{time} (#{distance} ago)"
  end
end
