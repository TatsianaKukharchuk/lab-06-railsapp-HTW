class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
	  t.belongs_to :order, index: true
	  t.belongs_to :pumpkin, index: true
      t.integer :amount
	  
	  t.timestamps
    end
  end
end
