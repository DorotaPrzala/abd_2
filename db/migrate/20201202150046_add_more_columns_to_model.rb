class AddMoreColumnsToModel < ActiveRecord::Migration[5.2]
  def change
	add_column :couriers, :surname, :string
	add_column :couriers, :adress, :string
	add_column :couriers, :email, :string
	add_column :couriers, :hiring_date, :date
	add_column :couriers, :working_hours, :string
	add_column :couriers, :password, :string
	add_column :couriers, :number_of_hours_worked_in_month, :integer
	add_column :couriers, :login, :string
	add_column :couriers, :phone, :string
	add_column :couriers, :contract_type, :string
	add_column :couriers, :hour_pay, :float
	add_column :couriers, :company, :string
	add_column :couriers, :car_type, :string
  end
end
