class AddDateToNotes < ActiveRecord::Migration
  def change
  	add_column :notes, :date, :string, :null => true
  end
end
