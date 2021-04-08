require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) do
    User.create(
      email: 'hello@example.com',
      created_at: '2021-04-06 22:35:32',
      updated_at: '2021-04-06 22:35:32',
      username: 'myname',
      password: '123456',
      password_confirmation: '123456'
    )
  end

  describe 'validations' do
    it { should validate_presence_of(:image) }
    it { should validate_length_of(:title) }
    it { should validate_length_of(:text) }
  end
end
