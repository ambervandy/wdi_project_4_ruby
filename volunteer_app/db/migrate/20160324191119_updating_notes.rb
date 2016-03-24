class UpdatingNotes < ActiveRecord::Migration
  def change
  	def up
	    drop_table :notes
	  end

	  def down
	    raise ActiveRecord::IrreversibleMigration
	  end
  end
end
