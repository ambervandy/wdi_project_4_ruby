class CreateNotesTable < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :author
      t.text :note
      t.belongs_to :project
    end
  end
end
