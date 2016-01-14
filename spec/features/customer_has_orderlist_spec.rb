require 'rails_helper'

describe "test02", :type => :feature do
  before :each do
    @customer = create(:customer_with_priced_orders)
  end

  it "show all orders to one customer" do
    visit "/customers/#{@costumer.id}"
    @orders = Customer.where(name: "Dagobert").first.orders
    @orders.each do |order|
		expect(page).to have_content order.placed_on + " " + order.status

	end
  end

  it "include Price in the Orders" do
    visit "/customers/#{@customer.id}"
     @filterdOrders = Order.where(:customer_id => @customer.id)
     totalSum = @filterdOrders.sum("price")
    expect(page).to have_content "Total Price: " + "#{totalSum}"
  end
  end