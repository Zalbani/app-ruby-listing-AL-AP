class Message < ApplicationRecord
  belongs_to :annonce
  belongs_to :user
  validates :message,presence: true
end
