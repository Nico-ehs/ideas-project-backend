class Idea < ApplicationRecord
  belongs_to :catagory
  belongs_to :user
  has_many :comments
end
