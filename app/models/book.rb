class Book < ActiveRecord::Base
  validates :book_name, presence: true
  validates :author_name, presence: true
  validates :read, presence: true
end
