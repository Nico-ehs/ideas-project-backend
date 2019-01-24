class SubCategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category_id
end
