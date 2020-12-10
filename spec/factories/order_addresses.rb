FactoryBot.define do
  factory :order_address do
    zip_code        { '111-1111' }
    prefecture_id   { 2 }
    city            { '横浜市' }
    house_num       { '青山1-1' }
    building        { '青山ハイツ' }
    phone           { 111_111_111 }
  end
end
