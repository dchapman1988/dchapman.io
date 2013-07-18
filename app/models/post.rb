class Post < ActiveRecord::Base
  validates :title, uniqueness: true
  validates :body, presence: true
end
