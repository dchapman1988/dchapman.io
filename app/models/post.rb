class Post < ActiveRecord::Base
  extend ::FriendlyId
  friendly_id :title, use: :slugged

  default_scope order('created_at DESC')

  validates :title, uniqueness: true
  validates :body, presence: true
end
