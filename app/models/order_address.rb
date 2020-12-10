class OrderAddress
  include ActiveModel::Model
  attr_accessor :token, :zip_code, :prefecture_id, :city, :house_num, :building, :phone

  with_options presence: true do
    validates :token
    validates :zip_code,        format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :prefecture_id    numericality: { other_than: 1 }
    validates :city             format: { with: /\A[ぁ-んァ-ン一-龥]+\z/ }
    validates :house_num
    validates :phone            format: { /\A\d{7,15}\z/ }
  end

  def save
    order = Order.create(token: token)
    Address.create(zip_code: zip_code, prefecture_id: prefecture_id, city: city, house_num: house_num, building: building, phone: phone)
  end
end