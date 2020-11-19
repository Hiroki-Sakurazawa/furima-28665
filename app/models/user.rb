class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  validates :email, presence: true
  validates :password, presence: true, length: {minimum:6}
  validates :surname1, presence: true
  validates :first_name1, presence: true
  validates :surname2, presence: true
  validates :first_name2, presence: true
  validates :dob, presence: true
end
