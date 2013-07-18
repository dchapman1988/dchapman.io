require 'spec_helper'

describe User do
  context 'Validations' do
    let(:user) { FactoryGirl.create(:user) }

    it 'should validate email' do
      new_user = User.new(email: user.email, password: '123456', password_confirmation: '123456')
      new_user.should_not be_valid
    end
  end
end
