describe 'bookmarks', type: :feature do
  before :each do
    visit 'users/sign_up'
    fill_in 'user_username', with: 'myname'
    fill_in 'user_email', with: 'myname@example.com'
    fill_in 'user_password', with: '123123'
    fill_in 'user_password_confirmation', with: '123123'
    click_button 'Sign up'
    visit '/categories/new'
    fill_in 'category_name', with: 'Horror'
    fill_in 'category_priority', with: '10'
    click_button 'Create Category'
    visit '/posts/new'
    all('input[type=checkbox]').each(&:click)
    fill_in 'post_title', with: 'Test Post'
    fill_in 'post_text', with: 'This is a Test Post. It can be saved.'
    click_button 'Create Post'
  end
end
