class Comment < ActiveRecord::Base
  attr_accessible :comment, :author_id, :post_id

  belongs_to :author
  belongs_to :post

  def add_author=(author_name)
    self.author = Author.new(name: author_name) unless author_name.empty?
  end
end
