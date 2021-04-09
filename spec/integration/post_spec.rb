require 'rails_helper'

describe 'posts', type: :feature do
  before :each do
    visit 'users/sign_up'
    fill_in 'user_username', with: 'carlos'
    fill_in 'user_email', with: 'charly@example.com'
    fill_in 'user_password', with: '123123'
    fill_in 'user_password_confirmation', with: '123123'
    click_button 'Sign up'
    visit '/categories/new'
    fill_in 'category_name', with: 'Test'
    fill_in 'category_priority', with: '20'
    click_button 'Create Category'
    visit '/posts/new'
  end
  it 'Should have a call to create a new article' do
    visit '/'
    expect(page).to have_content 'Please create a new Post'
  end
end
