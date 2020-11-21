class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :nickname
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
    validates :surname1, format: { with: /\A[ぁ-ん一-龥]+\z/ }
    validates :first_name1, format: { with: /\A[ぁ-ん一-龥]+\z/ }
    validates :surname2, format: { with: /\A[ァ-ン]+\z/ }
    validates :first_name2, format: { with: /\A[ァ-ン]+\z/ }
    validates :dob
  end
end
