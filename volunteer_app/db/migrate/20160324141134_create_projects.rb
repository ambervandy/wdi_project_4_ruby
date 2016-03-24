class CreateProjects < ActiveRecord::Migration
	def change
		create_table :projects do |t|
			t.string :name
			t.string :program_area
			t.string :location
			t.text :description
			t.integer :num_volunteers
			t.date :date

			t.timestamps null: false
		end
	end
end
