describe 'required authentication', type: :feature do
  it 'Should require authetication when root is accessed' do
    visit '/'
    expect(page).to have_content 'You need to sign in or sign up before continuing'
  end

  it 'Navbar should not have the link to Bookmarks' do
    visit '/'
    expect(page).to_not have_content 'Bookmarks'
  end

  it 'Navbar should not have the link to Create post' do
    visit '/'
    expect(page).to_not have_content 'Create post'
  end
end

describe 'Authenticated User access', type: :feature do
  before :each do
    visit 'users/sign_up'
    fill_in 'user_username', with: 'myname'
    fill_in 'user_email', with: 'myname@example.com'
    fill_in 'user_password', with: '123456'
    fill_in 'user_password_confirmation', with: '123123'
    click_button 'Sign up'
  end
end
