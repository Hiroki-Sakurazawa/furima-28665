require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいく時' do
      it '各入力項目が存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'emailに@があれば登録できる' do
        @user.email = 'test@test'
        expect(@user).to be_valid
      end
      it 'passwordが半角英数混合6文字以上であれば登録できる' do
        @user.password = 'test12'
        expect(@user).to be_valid
      end
      it 'surname1が漢字であれば登録できる' do
        @user.surname1 = '試験'
        expect(@user).to be_valid
      end
      it 'frist_name1が漢字であれば登録できる' do
        @user.first_name1 = '試験'
        expect(@user).to be_valid
      end
      it 'surname1がひらがなであれば登録できる' do
        @user.surname1 = 'てすと'
        expect(@user).to be_valid
      end
      it 'first_name1がひらがなであれば登録できる' do
        @user.first_name1 = 'てすと'
        expect(@user).to be_valid
      end
      it 'surname2がカタカナであれば登録できる' do
        @user.surname2 = 'テスト'
        expect(@user).to be_valid
      end
      it 'frist_name2がカタカナであれば登録できる' do
        @user.first_name2 = 'テスト'
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかない時' do
      it 'nicknameが空だと登録ができない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'surname1が空では登録できない' do
        @user.surname1 = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname1 can't be blank")
      end
      it 'first_name1が空では登録できない' do
        @user.first_name1 = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("First name1 can't be blank")
      end
      it 'surname2が空では登録できない' do
        @user.surname2 = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Surname2 can't be blank")
      end
      it 'first_name2が空では登録できない' do
        @user.first_name2 = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("First name2 can't be blank")
      end
      it 'dobが空では登録できない' do
        @user.dob = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Dob can't be blank")
      end

      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailに@がないと登録できない' do
        @user.email = 'testtest'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'passwordが半角英だけでは登録できない' do
        @user.password = 'testtest'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'passwordが数字だけでは登録できない' do
        @user.password = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'passwordが全角では登録できない' do
        @user.password = 'test１２'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'passwordが５文字以下では登録できない' do
        @user.password = 'test1'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'surname2に漢字があると登録できない' do
        @user.surname2 = '試験'
        @user.valid?
        expect(@user.errors.full_messages).to include('Surname2 is invalid')
      end
      it 'first_name2に漢字があると登録できない' do
        @user.first_name2 = '試験'
        @user.valid?
        expect(@user.errors.full_messages).to include('First name2 is invalid')
      end
      it 'surname2にひらがながあると登録できない' do
        @user.surname2 = 'てすと'
        @user.valid?
        expect(@user.errors.full_messages).to include('Surname2 is invalid')
      end
      it 'first_name2にひらがながあると登録できない' do
        @user.first_name2 = 'てすと'
        @user.valid?
        expect(@user.errors.full_messages).to include('First name2 is invalid')
      end
    end
  end
end
