require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "creation" do
    before do
      @user = User.create(email: "test@test1.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: 'MM', last_name: 'Uprety')
      login_as(@user, :scope => :user)
    end
    before do
      @post = Post.create(date: Date.today, rationale: "anything", user_id: @user.id)
    end
    it 'can be created' do
      expect(@post).to be_valid
    end
    it 'cannot be created without date and rationale text' do
      @post.date = nil
      @post.rationale =nil
      expect(@post).to_not be_valid
    end
  end
end
