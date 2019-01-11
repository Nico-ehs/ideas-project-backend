class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category_id, :user_id
  has_many :comments
end
