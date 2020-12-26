require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  before do
    @order_address = FactoryBot.build(:order_address)
  end

  describe '購入処理' do
    context '購入がうまくいく時' do
      it '各入力項目が存在すれば登録できる' do
        expect(@order_address).to be_valid
      end
    end

    context '購入がうまくいかない時' do
      it 'zip_codeが空だと登録ができない' do
        @order_address.zip_code = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Zip code can't be blank")
      end
      it 'prefecture_idが空だと登録ができない' do
        @order_address.prefecture_id = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Prefecture can't be blank")
      end
      it 'cityが空だと登録ができない' do
        @order_address.city = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("City can't be blank")
      end
      it 'house_numが空だと登録ができない' do
        @order_address.house_num = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("House num can't be blank")
      end
      it 'phoneが空だと登録ができない' do
        @order_address.phone = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Phone can't be blank")
      end
      it 'zip_codeにハイフンがないと登録ができない' do
        @order_address.zip_code = 1_111_111
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include('Zip code is invalid')
      end
      it 'prefecture_idが1だと登録ができない' do
        @order_address.prefecture_id = 1
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include('Prefecture must be other than 1')
      end
      it 'phoneにハイフンがあると登録ができない' do
        @order_address.phone = '111-111-111'
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include('Phone is invalid')
      end
      it 'phoneが11桁を超えると登録ができない' do
        @order_address.phone = '111_111_111_111'
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include('Phone is invalid')
      end
      it 'tokenが空だと登録ができない' do
        @order_address.token = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Token can't be blank")
      end
      it 'user_idが空だと登録ができない' do
        @order_address.user_id = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("User can't be blank")
      end
      it 'item_idが空だと登録ができない' do
        @order_address.item_id = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Item can't be blank")
      end
    end
  end
end
