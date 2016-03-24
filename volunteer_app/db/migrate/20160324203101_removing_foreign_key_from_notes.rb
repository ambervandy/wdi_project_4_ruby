class RemovingForeignKeyFromNotes < ActiveRecord::Migration
  def change
  	remove_foreign_key :notes, :projects
  end
end
