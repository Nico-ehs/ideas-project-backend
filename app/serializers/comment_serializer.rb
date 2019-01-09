class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :idea_id
end
