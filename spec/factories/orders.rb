FactoryGirl.define do
  factory :order do
    association :customer, factory: :customer
    placed_on { 3.days.ago}
    status :new
  end
  factory :order_associated, class: Order do
    placed_on { 3.days.ago}
    status :waiting
  end
  factory :order1, class: Order do
    association :customer, factory: :track
    placed_on { 6.weeks.ago}
    status :new
  end
  factory :order2, class: Order do
    association :customer, factory: :tick
    placed_on { 80.days.ago}
    status :new
  end
  factory :order3, class: Order do
    association :customer, factory: :trick
    placed_on { 3.days.ago}
    status :new
  end
  
  factory :order4, class: Order do
    association :customer, factory: :customer_with_priced_orders
    placed_on { 10.days.ago}
	status :new
	price 15.0
  end
  
end

