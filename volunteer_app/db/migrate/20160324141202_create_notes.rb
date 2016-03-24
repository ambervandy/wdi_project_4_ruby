class CreateNotes < ActiveRecord::Migration
	def change
		create_table :notes do |t|
			t.string :author
			t.text :note
			t.date :date

			t.timestamps null: false
		end
	end
end
