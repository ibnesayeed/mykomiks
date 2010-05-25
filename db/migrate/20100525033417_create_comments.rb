class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :strip_id
      t.string :author
      t.string :email
      t.string :website
      t.text :body
      t.string :status, :default => "unverified"
      t.boolean :approved, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
