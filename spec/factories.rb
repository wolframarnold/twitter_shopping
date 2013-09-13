FactoryGirl.define do
  sequence(:email) {|n| "joe#{n}@example.com" }

  factory :user do
    email { generate(:email) }
    password 'password'
    password_confirmation 'password'
  end

  factory :store do
    user
    name "my store"
  end

  factory :product do
    store
    seller {store.user}
    name "my product"
    price 1000
  end

  factory :order do
    user
  end

  factory :line_item do
    product
    order
    quantity 1
    price { product.price }
  end

end