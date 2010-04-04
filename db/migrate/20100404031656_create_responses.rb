class CreateResponses < ActiveRecord::Migration
  def self.up
    create_table :responses do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :subject
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :responses
  end
end
