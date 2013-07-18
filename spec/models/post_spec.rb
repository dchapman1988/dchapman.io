require 'spec_helper'

describe Post do
  context "Valiations" do
    before do
      @post = FactoryGirl.create(:post)
    end

    it 'should validate uniqueness of title' do
      new_post = Post.new(title: @post.title, body: @post.body)
      new_post.should_not be_valid
    end

    it 'should validate presence of body' do
      new_post = Post.new(title: @post.title, body: nil)
      new_post.should_not be_valid
    end
  end
end
