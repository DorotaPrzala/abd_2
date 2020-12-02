class AddColumnsToOrder < ActiveRecord::Migration[5.2]
  def change
     add_column :orders, :order_date, :date
	add_column :orders, :delivery_date, :date
	add_column :orders, :status, :string
	add_column :orders, :comment, :string
  end
end
