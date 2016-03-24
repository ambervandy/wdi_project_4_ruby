class ChangingDates < ActiveRecord::Migration
	def change
		remove_column :notes, :date
		remove_column :projects, :date

		add_column :notes, :date, :string, :null => true
		add_column :projects, :date, :string, :null => true
		add_column :projects, :start_time, :string, :null => true
		add_column :projects, :end_time, :string, :null => true
	end
end
