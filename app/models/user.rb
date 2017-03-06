class User < ApplicationRecord

  has_many :articles, foreign_key: :author_id

  validates_presence_of :email, :hashed_password


end
