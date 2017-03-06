class Article < ApplicationRecord

  belongs_to :author, class_name: :User
  belongs_to :category

  validates_presence_of :title, :body, :price


end
