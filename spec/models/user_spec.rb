require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it "nicknameが空だと登録ができない" do
      user = User.new(nickname: "")
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it "emailが空では登録できない" do
      user = User.new(email: "")
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
    it "passwordが空では登録できない" do
      user = User.new(password: "")
      user.valid?
      expect(user.errors.full_messages).to include("Password can't be blank")
    end
    it "姓漢字が空では登録できない" do
      user = User.new(surname1: "")
      user.valid?
      expect(user.errors.full_messages).to include("Surname1 can't be blank")
    end
    it "名漢字が空では登録できない" do
      user = User.new(first_name1: "")
      user.valid?
      expect(user.errors.full_messages).to include("First name1 can't be blank")
    end
    it "姓カナが空では登録できない" do
      user = User.new(surname2: "")
      user.valid?
      expect(user.errors.full_messages).to include("Surname2 can't be blank")
    end
    it "姓カナが空では登録できない" do
      user = User.new(first_name2: "")
      user.valid?
      expect(user.errors.full_messages).to include("First name2 can't be blank")
    end
    it "生年月日が空では登録できない" do
      user = User.new(dob: "")
      user.valid?
      expect(user.errors.full_messages).to include("Dob can't be blank")
    end
  end
end
