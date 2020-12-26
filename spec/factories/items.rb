FactoryBot.define do
  factory :item do
    name              { 'あいうえお' }
    description       { 'あいうえお' }
    category_id       { 2 }
    status_id         { 2 }
    fee_id            { 2 }
    area_id           { 2 }
    day_id { 2 }
    price { 3000 }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
