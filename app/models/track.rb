class Track < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :upvotes
end
