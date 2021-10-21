class Message < ApplicationRecord
  belongs_to :channel
  belongs_to :user

  def username=(name)
    self.user = User.find_or_create_by(username: name)
  end
end
