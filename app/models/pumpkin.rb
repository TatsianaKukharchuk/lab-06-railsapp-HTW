class Pumpkin < ActiveRecord::Base
  has_many :line_item
  has_many :orders, through: :line_items
end
