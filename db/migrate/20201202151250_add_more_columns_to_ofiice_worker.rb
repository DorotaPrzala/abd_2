class AddMoreColumnsToOfiiceWorker < ActiveRecord::Migration[5.2]
  def change
  	add_column :employees, :surname, :string
	add_column :employees, :adress, :string
	add_column :employees, :email, :string
	add_column :employees, :hiring_date, :date
	add_column :employees, :working_hours, :string
	add_column :employees, :password, :string
	add_column :employees, :number_of_hours_worked_in_month, :integer
	add_column :employees, :login, :string
	add_column :employees, :phone, :string
	add_column :employees, :contract_type, :string
	add_column :employees, :hour_pay, :float
	add_column :employees, :personal_id, :string
	add_column :employees, :number_of_used_vacation_days, :integer
	add_column :employees, :room_number, :integer
	add_column :employees, :owned_devices, :string
  end
end
