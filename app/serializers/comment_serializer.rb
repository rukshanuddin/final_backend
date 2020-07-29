class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user, :body, :posted, :link_id

  def user 
    self.object.user.first_name
  end

  def posted 
    (self.object.user.created_at).strftime("Posted: %m/%d/%Y at %I:%M%p")
  end
end
