class Category < ApplicationRecord
  has_many :ideas
  has_many :sub_categories
end
