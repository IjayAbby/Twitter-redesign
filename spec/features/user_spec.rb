require 'rails_helper'

describe 'Authentication', type: :feature do
  before :each do
    User.create(username: 'chantelle', fullname: 'Kyendereta Lifeline')
  end

  it 'signs @user in to access index page' do
    visit login_path
    fill_in 'session_username', with: 'chantelle'    
    click_button 'Login'
    expect(current_path).to eq(root_path)
  end
end


describe 'Authenticated User Activities', type: :feature do
  before :each do
    @user1 = User.create(username: 'chantelle', fullname: 'Kyendereta Lifeline')
    @user2 = User.create(username: 'chase', fullname: 'Chase Banks')
    visit '/login'
    fill_in 'session_username', with: 'chantelle'
    click_button 'Login'
  end

  it 'visits user profile page' do
    visit profile_path(@user1.username)
    expect(page).to have_current_path('/users/chantelle')
    expect(page).to have_text('Start a Conversation With Kyendereta Lifeline')
  end

  it 'accesses another user path' do
    visit '/users/chase'
    expect(page).to have_http_status(:success)
    expect(page).to have_text('Start a Conversation With Chase Banks')
  end

  it 'follows a user' do
    visit '/users/chase'
    expect(page).to have_text('0 Following')
    find('a.follow_me').click
    expect(page).to have_text('1 Following')
  end

  it 'logs out a user' do
    click_link 'Log out'
    expect(current_path).to eq(login_path)
  end
end
