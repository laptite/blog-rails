class Author < ActiveRecord::Base
  attr_accessible :author

  has_many :posts
  has_many :comments
end
