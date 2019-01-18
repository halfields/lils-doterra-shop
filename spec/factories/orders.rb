FactoryBot.define do
  factory :order do
    customer_name { "MyString" }
    address { "MyText" }
    pay_type { "MyString" }
    email { "MyString" }
    shipping_status { "MyString" }
  end
end
