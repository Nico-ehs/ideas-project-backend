class User < ApplicationRecord
  has_secure_password
  validates :name, uniqueness: { case_sensitive: false }
  has_many :ideas
  has_many :posted_comments, foreign_key: "user_id", class_name: "Comment"
end
