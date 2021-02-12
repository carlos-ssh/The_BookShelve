require 'rails_helper'

RSpec.describe Post, type: :model do
  current_user = User.first_or_create!(email: 'carlos@example.com', password: '123123', password_confirmation: '123123')
  
  it 'Has a title' do
    post = Post.new(
      title: '',
      review: 'A valid Review',
      rating: 5
    )
    expect(post).to_not be_valid
    post.title = 'A valid Title'
    expect(post).to be_valid
  end

  it 'Has a Review' do
    post = Post.new(
      title: 'A valid Title',
      review: '',
      rating: 5
    )
    expect(post).to_not be_valid
    post.review = 'A valid review'
    expect(post).to be_valid
  end


  it 'Has a Title at least 2 characters minimum' do
    post = Post.new(
      title: 'A valid Title',
      review: '',
      rating: 5
    )
    expect(post).to_not be_valid
    post.title = '12'
    expect(post).to be_valid
  end


  it 'Has a Review between 5..500 characters' do
    post = Post.new(
      title: 'A valid Title',
      review: '12345',
      rating: 5
    )
    expect(post).to_not be_valid
    post.review = '123'
    expect(post).to be_valid
    fiveoo_string = 'adgohbeimrfxfsumgumqlmtpzxpohkhsalyuhksjhbeimrfxfsumgumqkhsalyukyaqlmgljuadgohbeimrfxfsumgumqlmtpzxpohkhsalyuhksjkyaqlmgljuadgolmtpzxpohkhsalyuhksjkyaqlmgljuadgohbeimrfxfsumgumqlmtpzxpohkhsalyuhksjkyaqlmgljuadgohbeimrfxfsumgumqlmtpzxpohkhsalyuhksjkyaqlmgljukyaqlmgljuadgohbeimrfxfsumgumqlmtpzxpohkhsalyuhksjkyaqlmgljuadgolmtpzxpohkhsalyuhksjkyaqlmgljuadgohbeimrfxfsumgumqlmtpzxpohkhsalyuhksjkyaqlmgljuadgohbeimrfxfsumgumqlmtpzxpohkhsalyuhksjkyaqlmgljuwerwertwertwertsdfvbsdfgbdfgjhhjfghjertyerty12345'
    post.review = fiveoo_string
    expect(post).to be_valid
    post.review = fiveoo_string + '1'
    expect(post).to_not be_valid
  end

  it 'Has a numerical Rating' do
    post = Post.new(
      title: 'A valid Title',
      review: 'A valid Review',
      rating: 5
    )
    expect(post).to be_a(Integer)
  end

end