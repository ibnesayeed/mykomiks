class AddNoteToStrip < ActiveRecord::Migration
  def self.up
    add_column :strips, :note, :text
  end

  def self.down
    remove_column :strips, :note
  end
end
