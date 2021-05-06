RSpec.describe User, type: :model do
  @user = User.create(
    username: 'tests',
    email: 'tests@example.com',
    password: '123456',
    password_confirmation: '123456',
    created_at: '2020-09-21 22:35:32',
    updated_at: '2020-09-21 22:35:32'
  )

  describe 'validations' do
    it { should validate_presence_of(:username) }

    it { should validate_uniqueness_of(:username) }

    it { should validate_presence_of(:email) }

    it { should allow_value('tests@example.com').for(:email) }

    it { should_not allow_value('test').for(:email) }

    it { should allow_value('123456').for(:password) }

    it { should_not allow_value('123').for(:password) }
  end
end
