require 'spec_helper'

describe PostsHelper do
  it 'should have a time_of_post helper' do
    time_obj = Time.now
    date = time_obj.strftime("%m/%d/%Y")
    time = time_obj.strftime("%k:%M")
    expected_results = "#{date} @ #{time}"
    subject.instance_methods.should include :time_of_post
    expect(helper.time_of_post(time_obj)).to eq(expected_results)
  end

  it 'should have a render_markdown helper' do
    subject.instance_methods.should include :render_markdown
    expect(helper.render_markdown("# HEADER")).to eq("<h1>HEADER</h1>")
  end
end
