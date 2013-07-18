require 'faker'
include ActionDispatch::TestProcess

FactoryGirl.define do
  # Squences
  sequence :email do |n|
    Faker::Internet.user_name + "#{n}" + "@" + Faker::Internet.domain_name
  end

  # Factories
  factory :user, :class => ::User do
    email { FactoryGirl.generate(:email) }
    password "password"
    password_confirmation "password"
  end

  factory :post, :class => ::Post do
    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }
  end
end
