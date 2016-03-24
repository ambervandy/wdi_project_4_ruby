class AddingForeignKeyWithCascading < ActiveRecord::Migration
  def change
  	add_foreign_key :notes, :projects, on_delete: :cascade
  end
end
