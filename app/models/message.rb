class Message < ApplicationRecord

  belongs_to :user

  after_create_commit do
    BroadcastMessageJob.perform_later self
  end
end
