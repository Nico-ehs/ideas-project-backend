class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :idea_id, :author_name
  def author_name
    self.object.user.name
  end
end
