class Strip < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :categories
end
