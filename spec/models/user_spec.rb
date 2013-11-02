require 'spec_helper'

describe User do
  # before do
  #   @user = FactoryGirl.create(:user)
  # end
  # subject { @user }
  # it { should have_one(:survey) }
  # it { should have_many(:activities) }

  describe "creating a user" do
    it "should create user" do
      expect do
        user = FactoryGirl.create(:user)
      end.to change(User, :count).by(1)
    end
  end

  describe ".is_admin?" do
    it "is admin" do
      email = 'test@example.com'
      user = FactoryGirl.create(:user, id: 1, email: email)
      content = FactoryGirl.create(:content, id: 1, value: email)
      expect(user.is_admin?).to eq true
    end

    it "is not admin" do
      email = 'test@example.com'
      user = FactoryGirl.create(:user, id: 2, email: email)
      content = FactoryGirl.create(:content, id: 1, value: email)
      expect(user.is_admin?).to eq false
    end

    it "is not admin 2" do
      email = 'test@example.com'
      user = FactoryGirl.create(:user, id: 1, email: 'test2@example.com')
      content = FactoryGirl.create(:content, id: 1, value: email)
      expect(user.is_admin?).to eq false
    end
  end

  describe "deleting a user" do
    it "should delete the user" do
      user = FactoryGirl.create(:user)
      expect do
        user.delete
      end.to change(User, :count).by(-1)
    end

    it "should delete associated surveys" do
      user = FactoryGirl.create(:user)
      survey = FactoryGirl.create(:survey, user: user)
      expect do
        user.destroy
      end.to change(Survey, :count).by(-1)
    end
  end
end
