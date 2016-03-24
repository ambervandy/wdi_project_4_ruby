class AddingKeyToNotes < ActiveRecord::Migration
  def change
  	add_foreign_key :notes, :projects
  end
end
