require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる" do
      end
      it "nicknameが6文字以下で登録できる" do
      end
      it "passwordが6文字以上であれば登録できる" do
      end
    end

    context '新規登録がうまくいかない時' do
      it "nicknameが空だと登録ができない" do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "emailが空では登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "passwordが空では登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it "姓漢字ひらがなが空では登録できない" do
        @user.surname1 = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname1 can't be blank")
      end
      it "名漢字ひらがなが空では登録できない" do
        @user.first_name1 = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("First name1 can't be blank")
      end
      it "姓カナが空では登録できない" do
        @user.surname2 = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname2 can't be blank")
      end
      it "姓カナが空では登録できない" do
        @user.first_name2 = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("First name2 can't be blank")
      end
      it "生年月日が空では登録できない" do
        @user.dob = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Dob can't be blank")
      end
      
      it "重複したemailが存在する場合登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
      it "passwordが半角英だけでは登録できない" do
        @user.password = "testtest"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it "passwordが数字だけでは登録できない" do
        @user.password = "111111"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it "passwordが全角では登録できない" do
        @user.password = "test１２"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it "passwordが５文字以下では登録できない" do
        @user.password = "test1"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      it "姓漢字ひらがなにカタカナがあると登録できない" do
        @user.surname1 = "テスト"
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname1 is invalid")
      end
      it "名漢字ひらがなにカタカナがあると登録できない" do
        @user.first_name1 = "テスト"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name1 is invalid")
      end
      it "姓カナに漢字があると登録できない" do
        @user.surname2 = "試験"
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname2 is invalid")
      end
      it "名カナに漢字があると登録できない" do
        @user.first_name2 = "試験"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name2 is invalid")
      end
      it "姓カナにひらがながあると登録できない" do
        @user.surname2 = "てすと"
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname2 is invalid")
      end
      it "名カナにひらがながあると登録できない" do
        @user.first_name2 = "てすと"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name2 is invalid")
      end
    end
  end
end
