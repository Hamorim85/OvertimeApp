require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end
  end

   describe "validations" do
    it "can be created" do
      expect(@user).to be_valid
    end

    it "can not be created without first_name" do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it "can not be created without last_name" do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it "can not be created without phone" do
      @user.phone = nil
      expect(@user).to_not be_valid
    end

    it "require the phone attr to only be integer" do
      @user.phone = 'mygreatstr'
      expect(@user).to_not be_valid
    end

    it "require the phone attr to only have 10 characters"
      @user.phone = '1234567891011'
      expect(@user).to_not be_valid
    end

  end

  describe "custome name methods" do
    it 'has full name method that combines first and last name' do
      expect(@user.full_name).to eq("Snow, Jon")
    end
  end

end
