class Role < ApplicationRecord
  validates :name,presence:  true
  # TO-DO link users and roles
  # has_many :users
end
