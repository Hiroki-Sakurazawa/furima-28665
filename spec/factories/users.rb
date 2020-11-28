FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 { Faker::Internet.free_email }
    password              { 'test12' }
    password_confirmation { password }
    surname1              { 'てすと' }
    first_name1           { 'てすと' }
    surname2              { 'テスト' }
    first_name2           { 'テスト' }
    dob                   { '1999-12-31' }
  end
end
