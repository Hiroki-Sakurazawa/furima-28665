class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i  }
  validates :surname1, presence: true, format: { with: /\A[ぁ-ん一-龥]+\z/ }
  validates :first_name1, presence: true, format: { with: /\A[ぁ-ん一-龥]+\z/ }
  validates :surname2, presence: true, format: { with: /\A[ァ-ン]+\z/ }
  validates :first_name2, presence: true, format: { with: /\A[ァ-ン]+\z/ }
  validates :dob, presence: true
end