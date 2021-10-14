class MessageSerializer < ActiveModel::Serializer
  attributes :id, :message, :username
end
