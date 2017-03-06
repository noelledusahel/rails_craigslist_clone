class Article < ApplicationRecord

  belongs_to :category
  belongs_to :user

  validates_presence_of :title, :body, :price
end
