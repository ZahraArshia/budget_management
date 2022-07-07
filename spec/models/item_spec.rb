require 'rails_helper'

RSpec.describe Item, type: :model do
  before(:each) do
    @user = User.create(name: 'Test', email: 'test@gmail.com', password: '123456')
    @group = Group.create(icon: 'icon.png', name: 'category1', user_id: @user.id)
    @item = Item.create(name: 'item1', amount: '100', group_id:@group.id, user_id:@user.id)
  end

  describe 'Transaction validations' do
    it 'is valid with valid attributes' do
      expect(@item).to be_valid
    end

    it 'is not valid without a name' do
      @item.name = nil
      expect(@item).to_not be_valid
    end

    it 'is invalid if name length is more than 100 characters' do
      @item.name = 'name' * 26
      expect(@item).to_not be_valid
    end

    it 'is not valid without a user' do
      @item.user_id = nil
      expect(@item).to_not be_valid
    end

    it 'is not valid without an amount' do
      @item.amount = nil
      expect(@item).to_not be_valid
    end
  end
end