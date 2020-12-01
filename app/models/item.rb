class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :fee
  belongs_to :area
  belongs_to :day

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
    validates :fee_id
    validates :area_id
    validates :day_id
  end

  with_options presence: true do
    validates :name
    validates :description
    validates :price, numericality: { greater_than_or_equal_to: 300, less_than: 10_000_000 }
    validates :image
  end
end
