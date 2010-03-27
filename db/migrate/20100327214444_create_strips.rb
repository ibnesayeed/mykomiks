class CreateStrips < ActiveRecord::Migration
  def self.up
    create_table :strips do |t|
      t.string :title
      t.string :url
      t.text :story

      t.timestamps
    end
  end

  def self.down
    drop_table :strips
  end
end
