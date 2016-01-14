require 'rails_helper'

describe "test02", :type => :feature do
  before :each do
    @customer = create(:customer_with_priced_orders)
  end

  it "show all orders to one customer" do
    visit "/customers/#{@costumer.id}"
    @filterdOrders = Order.where(:customer_id => @customer.id)
    amount = @filterdOrder.size

    expect(page).to to have_content "Number Of Orders: " + "#{amount}"
  end

  it "include Price in the Orders" do
    visit "/customers/#{@customer.id}"
     @filterdOrders = Order.where(:customer_id => @customer.id)
     totalSum = @filterdOrders.sum("price")
    expect(page).to have_content "Total Price: " + "#{totalSum}"
  end
end