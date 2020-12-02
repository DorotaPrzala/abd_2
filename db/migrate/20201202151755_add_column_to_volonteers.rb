class AddColumnToVolonteers < ActiveRecord::Migration[5.2]
  def change
    add_column :volonteers, :surname, :string
	add_column :volonteers, :adress, :string
	add_column :volonteers, :email, :string
	add_column :volonteers, :hiring_date, :date
	add_column :volonteers, :working_hours, :string
	add_column :volonteers, :password, :string
	add_column :volonteers, :number_of_hours_worked_in_month, :integer
	add_column :volonteers, :login, :string
	add_column :volonteers, :phone, :string
	add_column :volonteers, :contract_type, :string
	add_column :volonteers, :hour_pay, :float
	add_column :volonteers, :personal_id, :string
	add_column :volonteers, :is_adult, :boolean
	add_column :volonteers, :parent_agreement, :binary
  end
end
