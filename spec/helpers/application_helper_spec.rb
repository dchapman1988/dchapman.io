require 'spec_helper'

describe ApplicationHelper do
  it 'should have a page_load_time_helper' do
    @start_time = Time.now.usec
    expect(helper.page_load_time_helper).to be_kind_of String
  end
end
