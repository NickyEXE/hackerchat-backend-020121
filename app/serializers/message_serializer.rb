class MessageSerializer < ActiveModel::Serializer
  attributes :id, :message, :username

  def username
    self.object.user.username
  end
end
