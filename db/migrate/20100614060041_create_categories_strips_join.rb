class CreateCategoriesStripsJoin < ActiveRecord::Migration
  def self.up
    create_table :categories_strips, :id => false do |t|
      t.integer :category_id
      t.integer :strip_id
    end
  end

  def self.down
    drop_table :categories_strips
  end
end
