require 'spec_helper'

describe ApplicationHelper do
  it 'should have a page_load_time helper' do
    @start_time = Time.now.usec
    expect(helper.page_load_time).to be_kind_of String
  end

  it 'should have a current_url helper' do
    helper.should respond_to :current_url
  end

  it 'should have a current_url helper' do
    helper.page_title.should == "David Chapman | dchapman.io"
  end
end
