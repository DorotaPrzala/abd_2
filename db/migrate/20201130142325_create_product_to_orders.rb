class CreateProductToOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :product_to_orders do |t|

      t.timestamps
    end
  end
end
