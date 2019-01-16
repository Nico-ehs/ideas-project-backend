class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category_id, :user_id, :comments, :category_title, :author_name
  def category_title
    self.object.category.title
  # has_many :comments
  end
  def comments
    self.object.comments.map{|c| c.attributes.merge({"author_name" => c.user.name}) }
  end
  def author_name
    self.object.user.name
  end
end
