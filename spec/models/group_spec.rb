require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.create(name: 'Test', email: 'test@gmail.com', password: '123456')
    @group = Group.create(icon: 'icon.png', name: 'category1', user_id: @user.id)
  end


  describe 'Group validations' do
    it 'is valid with valid attributes' do
      expect(@group).to be_valid
    end

    it 'is not valid without a name' do
      @group.name = nil
      expect(@group).to_not be_valid
    end

    it 'is invalid if name length is more than 100 characters' do
      @group.name = 'name' * 26
      expect(@group).to_not be_valid
    end

    it 'is invalid without an icon' do
      @group.icon = nil
      expect(@group).to_not be_valid
    end

    it 'is not valid without a user' do
      @group.user_id = nil
      expect(@group).to_not be_valid
    end
  end
end