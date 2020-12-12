FactoryBot.define do
  factory :order_address do
    zip_code        { '111-1111' }
    prefecture_id   { 2 }
    city            { '横浜市' }
    house_num       { '青山1-1' }
    building        { '青山ハイツ' }
    phone           { 111_111_111 }
    token           {"tok_abcdefghijk00000000000000000"}
    number          { '4242424242424242' }
    month           { '12' }
    year            { '12' }
    cvc             { '123' }
  end
end
