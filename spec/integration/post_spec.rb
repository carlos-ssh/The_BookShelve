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

  it 'Should have a call to create a new Post' do
    visit '/'
    expect(page).to have_content 'Create a new Post'
  end

  it 'Should load to new_post_path' do
    expect(page).to have_content 'Create a new Post'
  end

  it 'Should render a form to create a new post' do
    expect(page).to have_content 'Create a new Post'
  end

  it 'should have an error if Title is not present' do
    click_button 'Create Post'
    expect(page).to have_content 'Title is too short (minimum is 5 characters)'
  end

  it 'should have an error if Text is not present' do
    click_button 'Create Post'
    expect(page).to have_content 'Text is too short (minimum is 15 characters)'
  end

  it 'should have an error if no category was choosen' do
    click_button 'Create post'
    expect(page).to have_content "Categories can't be blank"
  end

  it 'should not have an error category was choosen' do
    all('input[type=checkbox]').each(&:click)
    click_button 'Create Post'
    expect(page).to_not have_content "Categories list can't be blank"
  end

  it 'should not have an error message with valid attributes' do
    all('input[type=checkbox]').each(&:click)
    fill_in 'post_title', with: 'Test post'
    fill_in 'post_review', with: 'This is a Test post. It can be saved.'
    click_button 'Create post'
    expect(page).to_not have_content 'prohibited this post from being saved'
  end

  it 'new post should be on the first page' do
    all('input[type=checkbox]').each(&:click)
    fill_in 'post_title', with: 'Test post'
    fill_in 'post_review', with: 'This is a Test post. It can be saved.'
    click_button 'Create post'
    visit '/'
    expect(page).to have_content 'Test post'
  end

  it 'new post should be on the category page' do
    all('input[type=checkbox]').each(&:click)
    fill_in 'post_title', with: 'Test post'
    fill_in 'post_review', with: 'This is a Test post. It can be saved.'
    click_button 'Create post'
    visit '/'
    click_link 'Test'
    expect(page).to have_content 'This is a Test post. It can be saved.'
  end
end
