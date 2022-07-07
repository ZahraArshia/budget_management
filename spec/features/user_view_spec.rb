require 'rails_helper'

RSpec.describe 'users index', type: :feature do
  before(:each) do
    @user = User.create(name: 'Test', email: 'test@gmail.com', password: '123456')

    visit root_path
  end

  describe 'User index page' do
    it 'Shows the content' do
      expect(page).to have_content('My Budget Manager')
    end
  end
end
