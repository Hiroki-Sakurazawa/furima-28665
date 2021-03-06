class OrderAddress
  include ActiveModel::Model
  attr_accessor :zip_code, :prefecture_id, :city, :house_num, :building, :phone, :item_id, :token, :user_id

  with_options presence: true do
    validates :zip_code,         format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :prefecture_id,    numericality: { other_than: 1 }
    validates :city
    validates :house_num
    validates :phone, format: { with: /\A\d{7,11}\z/ }
    validates :token
    validates :user_id
    validates :item_id
  end

  def save
    order = Order.create(item_id: item_id, user_id: user_id)
    Address.create(zip_code: zip_code, prefecture_id: prefecture_id, city: city, house_num: house_num, building: building, phone: phone, order_id: order.id)
  end
end
