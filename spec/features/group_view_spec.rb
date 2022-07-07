require 'rails_helper'

RSpec.describe 'group/index', type: :feature do
  before(:each) do
    @user = User.create(name: 'Test', email: 'test@gmail.com', password: '123456')
    @group = Group.create(icon: 'icon.png', name: 'category1', user_id: @user.id)
    @item = Item.create(name: 'item1', amount: '100', group_id:@group.id, user_id:@user.id)

    visit new_user_session_path
    fill_in 'Email', with: 'test@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
  end

  it 'I can access this page if user is connected' do
    visit groups_path

    expect(page).to have_content 'CATEGORIES'
    expect(page).to have_content(@group.name)
  end

  it 'I can access this page if user is connected' do
    visit new_group_path
    expect(page).to_not have_content 'CATEGORIES'
    expect(page).to have_content 'ADD A NEW CATEGORY'
    expect(page).to have_css('form')
    expect(page).to have_css('input[type=submit]')
  end

end