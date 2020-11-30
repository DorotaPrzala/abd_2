class CreateClassVariables < ActiveRecord::Migration[5.2]
  def change
    create_table :class_variables do |t|
      t.integer :orders_number

      t.timestamps
    end
  end
end
