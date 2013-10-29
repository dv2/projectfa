require 'spec_helper'

describe User do
  describe "creating a user" do
    it "should create user" do
      expect do
        user = FactoryGirl.create(:user)
      end.to change(User, :count).by(1)
    end
  end
end
