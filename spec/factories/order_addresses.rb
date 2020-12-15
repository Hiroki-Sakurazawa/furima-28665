FactoryBot.define do
  factory :order_address do
    zip_code        { '111-1111' }
    prefecture_id   { 2 }
    city            { '横浜市' }
    house_num       { '青山1-1' }
    building        { '青山ハイツ' }
    phone           { '111111111' }
    token           { 'tok_abcdefghijk00000000000000000' }
    user_id         { 1 }
    item_id         { 1 }
  end
end
