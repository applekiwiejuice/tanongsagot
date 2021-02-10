require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    # @user = create(:user, name: 'Tyler Durden', email: 'fight@club.com')
    @user = User.new(name: 'Tyler Durden', email: 'fight@club.com')
  end

  it 'is valid with valid attributes' do
    expect(@user).to be_valid
  end

  it 'is not valid without name' do
    @user.name = ""
    
    expect(@user).to_not be_valid
  end

  it 'is not valid with name too long' do
    @user.name = 'a' * 51
    
    expect(@user).to_not be_valid
  end

  it 'is not valid without email' do
    @user.email = nil
    
    expect(@user).to_not be_valid
  end

  it 'is not valid with email too long' do
    @user.email = 'a' * 244 + '@example.com'
    
    expect(@user).to_not be_valid
  end

  it 'is valid with valid email' do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                        first.last@foo.jp alice+bob@baz.cn]
    
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      
      expect(@user).to be_valid, "#{valid_address.inspect} should be valid"
    end
  end

  it 'is not valid with invalid email' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                          foo@bar_baz.com foo@bar+baz.com foo@bar..com]
    
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      
      expect(@user).to_not be_valid, "#{invalid_address.inspect} should be invalid"
    end
  end

  # it 'is not valid with duplicate email' do 
  #   @user = User.new(name: 'Tyler Durden', email: 'fight@club.com')
  #   @user.save
  #   duplicate_user = @user.dup
  #   duplicate_user.email = @user.email.upcase
    
  #   expect(duplicate_user).to_not be_valid
  # end
end