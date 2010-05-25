class Comment < ActiveRecord::Base
  belongs_to :strip
  validates_presence_of :author, :email, :body
end
