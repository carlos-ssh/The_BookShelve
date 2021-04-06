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
  let(:cat1) do
    Category.create(
      name: 'Reviews',
      priority: 3
    )
  end
  let(:cat2) do
    Category.create(
      name: 'Actions',
      priority: 2
    )
  end
  let(:subject) do
    described_class.new(
      title: 'This is a Test Title',
      text: 'This is a long text, to test the post',
      author_id: user.id,
      categories_list: [cat1.id, cat2.id]
    )
  end

  describe 'validations with subject' do
    before(:each) do
      subject.image.attach(io: File.open(Rails.root.join('spec', 'models', 'images', 'default.jpg')),
                           filename: 'default.jpg', content_type: 'image/jpg')
    end
    it 'should not be valid without an image' do
      subject.image = nil
      expect(subject).to_not be_valid
    end
    it 'should be valid with valid attributes' do
      expect(subject).to be_valid
    end
    it 'should be invalid with small title' do
      subject.title = 'Hello'
      expect(subject).to_not be_valid
    end
    it 'should be invalid with small text' do
      subject.text = 'Hello world!'
      expect(subject).to_not be_valid
    end
  end

  describe 'validations' do
    it { should validate_presence_of(:image) }
    it { should validate_length_of(:title) }
    it { should validate_length_of(:text) }
  end

  describe 'associations' do
    it { should belong_to(:author).class_name('User') }
    it { should has_many(:votes) }
    it { should has_many(:bookmarks) }
    it { should has_and_belong_to_many(:categories) }
  end
end