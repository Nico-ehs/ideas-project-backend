class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :ideas
  has_many :posted_comments
end
