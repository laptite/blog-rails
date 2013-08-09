class Post < ActiveRecord::Base
  attr_accessible :title, :body, :author_id

  has_many :comments
  belongs_to :author

  validates :title, presence: true,
                    length: { minimum: 3 }

  def add_author=(author_name)
    self.author = Author.new(name: author_name) unless author_name.empty?
  end
end
