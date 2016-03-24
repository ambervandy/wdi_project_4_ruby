class CreateJoinTable < ActiveRecord::Migration
	def change
		create_join_table :projects, :volunteers do |t|
			t.integer :project_id
			t.integer :volunteer_id
		end
	end
end
